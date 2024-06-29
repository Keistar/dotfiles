return {
  "stevearc/conform.nvim",
  dependencies = { "mason.nvim" },
  opts = {
    lua = { "stylua" },
    -- Conform will run multiple formatters sequentially
    python = { "isort", "black" },
    -- Use a sub-list to run only the first available formatter
    javascript = { { "prettierd", "prettier" } },
    php = { { "php_cs_fixer", "phpcbf", "phpinsights" } },
  },
}
