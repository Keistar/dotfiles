local php_cs_fixer_my_rules_file =
  table.concat(vim.fn.readfile(vim.fn.expand("~/.config/nvim/php-cs-fixer-rules.json")), "")
return {
  {
    "stevearc/conform.nvim",
    lazy = true,
    event = { "BufReadPre", "BufNewFile" },
    opts = {
      formatters_by_ft = {
        javascript = { "prettier" },
        typescript = { "prettier" },
        javascriptreact = { "prettier" },
        typescriptreact = { "prettier" },
        svelte = { "prettier" },
        css = { "prettier" },
        html = { "prettier" },
        json = { "prettier" },
        yaml = { "prettier" },
        markdown = { "prettier" },
        graphql = { "prettier" },
        lua = { "stylua" },
        python = { "isort", "black" },
        php = { "pcf", "pcfPersonal" },
      },
      formatters = {
        prettier = {
          command = "prettier",
          args = { "--stdin-filepath", vim.api.nvim_buf_get_name(0) },
        },
        stylua = {
          command = "stylua",
          args = { "-" },
        },
        isort = {
          command = "isort",
          args = { "-" },
        },
        black = {
          command = "black",
          args = { "-" },
        },
        pcf = {
          command = "php-cs-fixer",
          args = {
            "fix",
            "--using-cache=no",
            '--rules={"@PSR12":true}',
            "$FILENAME",
          },
          stdin = false,
        },
        pcfPersonal = {
          command = "php-cs-fixer",
          args = {
            "fix",
            "--using-cache=no",
            "--rules=" .. php_cs_fixer_my_rules_file,
            "$FILENAME",
          },
          stdin = false,
        },
      },
      notify_on_error = true,
    },
  },
}
