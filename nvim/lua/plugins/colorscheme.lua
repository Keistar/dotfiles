return {
  {
    "Shatur/neovim-ayu",
    lazy = false,
    priority = 1000,
    config = function()
      -- 1. まず色の種類を選択 ("light", "mirage", "dark")
      vim.g.ayucolor = "mirage"

      -- 2. setupを呼び出す (ここで override を使う)
      require("ayu").setup({
        overrides = {
          -- ここに「上書きしたい部分」を書きます
          -- 例：コメントをもっと見やすくしたい場合
          Comment = { fg = "#707a8c", italic = true },
          -- 例：関数の色を変更したい場合
          Function = { fg = "#ffb454" },
          Normal = { bg = "None" },
          NormalFloat = { bg = "none" },
          ColorColumn = { bg = "None" },
          SignColumn = { bg = "None" },
          Folded = { bg = "None" },
          FoldColumn = { bg = "None" },
          CursorLine = { bg = "None" },
          CursorColumn = { bg = "None" },
          VertSplit = { bg = "None" },
        },
      })

      -- 3. 最後に適用
      vim.cmd("colorscheme ayu")
    end,
  },
}
