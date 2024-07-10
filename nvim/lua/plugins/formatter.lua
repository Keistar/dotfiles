return {
  "stevearc/conform.nvim",
  dependencies = { "mason.nvim" },
  opts = {
    formatters_by_ft = {
      lua = { "stylua" },
      -- Conform will run multiple formatters sequentially
      python = { "isort", "black" },
      -- Use a sub-list to run only the first available formatter
      javascript = { { "prettierd", "prettier" } },
      typescript = { { "prettierd", "prettier" } },
      vue = { { "prettierd", "prettier" } },
      php = { { "php_cs_fixer", "phpcbf", "phpinsights" } },
    },
    format_on_save = {
      -- I recommend these options. See :help conform.format for details.
      lsp_format = "fallback",
      timeout_ms = 500,
    },
  },
}
