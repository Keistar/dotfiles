return {
  {
    "mfussenegger/nvim-lint",
    event = "LazyFile",
    opts = {
      events = { "BufWritePost", "BufReadPost", "InsertLeave" },
      linters_by_ft = {
        php = { "phpstan" },
      },
      linters = {
        phpstan = {
          cmd = "phpstan",
          args = {
            "analyse",
            "--error-format",
            "raw",
            "--no-progress",
            "--level",
            "max",
            "-",
          },
          stdin = false,
          stream = "stdout",
          ignore_exitcode = true, -- PHPStanの終了コードを無視します
          parser = function(output, _)
            local diagnostics = {}
            for _, line in ipairs(vim.split(output, "\n")) do
              if line ~= "" then
                local lnum, col, message = line:match(":(%d+):(%d+)%s+(.*)")
                table.insert(diagnostics, {
                  lnum = tonumber(lnum) - 1,
                  col = tonumber(col) - 1,
                  message = message,
                  severity = vim.lsp.protocol.DiagnosticSeverity.Error,
                })
              end
            end
            return diagnostics
          end,
        },
      },
    },
  },
}
