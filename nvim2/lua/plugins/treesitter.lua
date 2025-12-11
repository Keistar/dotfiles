return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate', -- プラグインのインストール時にパーサーを更新
  ensure_installed = {
    "bash",
    "c",
    "diff",
    "html",
    "javascript",
    "jsdoc",
    "json",
    "jsonc",
    "lua",
    "luadoc",
    "luap",
    "markdown",
    "markdown_inline",
    "php",
    "printf",
    "python",
    "query",
    "regex",
    "toml",
    "tsx",
    "typescript",
    "vim",
    "vimdoc",
    "xml",
    "yaml",
  },
  config = function()
    require('nvim-treesitter.configs').setup {
      -- ここに設定を記述します (ステップ2)
    }
  end,
}
