return {
  {
    "williamboman/mason-lspconfig.nvim",
    opts = {
      ensure_installed = {
        "lua_ls",
        -- "bashls",
        -- "clangd",
        -- "cmake",
        -- "cssls",
        -- "dockerls",
        -- "docker_compose_language_service",
        -- "gopls",
        -- "html",
        -- "jsonls",
        "tsserver",
        -- "marksman",
        -- "nimls",
        -- "pylsp",
        "intelephense",
      },
    },
  },
}
