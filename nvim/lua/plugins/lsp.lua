return {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "stylua",
        "lua-language-server",
        "shellcheck",
        "shfmt",
        "flake8",
        "intelephense",
        "php-cs-fixer",
        "phpstan",
        "prettierd",
        "prettier",
        "typescript-language-server",
        "docker-compose-language-service",
        "dockerfile-language-server",
      },
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗",
        },
      },
    },
  },
  {
    "williamboman/mason-lspconfig.nvim",
    opts = {
      ensure_installed = {
        "lua_ls",
        "intelephense",
        "tsserver",
        "dockerls",
      },
    },
  },
  {
    "nvim-cmp",
    dependencies = { "hrsh7th/cmp-emoji" },
    opts = function(_, opts)
      table.insert(opts.sources, { name = "emoji" })
    end,
  },
}
