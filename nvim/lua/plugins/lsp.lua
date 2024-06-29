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
        -- "docker-compose-language-service",
        "dockerls",
      },
    },
  },
}
