return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        intelephense = {
          settings = {
            intelephense = {
              enviroment = {
                phpVersion = "8.2",
              },
              format = {
                enable = true,
              },
              files = {
                maxSize = 500000,
              }
            },
          },
        },
      },
    },
  },
}
