-- 組み込み設定 (options)
vim.opt.number = true        -- 行番号を表示
vim.opt.relativenumber = true -- 相対行番号を表示 (カーソル行から見て相対的な番号)
vim.opt.tabstop = 4          -- タブ文字の幅を4スペースに設定
vim.opt.shiftwidth = 4       -- 自動インデントの幅を4スペースに設定
vim.opt.expandtab = true     -- タブキーでスペースを挿入
vim.opt.smartindent = true   -- 賢いインデント
vim.opt.wrap = false         -- 長い行を折り返さない

-- 検索設定
vim.opt.incsearch = true     -- インクリメンタルサーチ
vim.opt.hlsearch = true      -- 検索結果をハイライト

-- バックアップやスワップファイルなどを作業ディレクトリに作らない設定
vim.opt.undofile = true
vim.opt.swapfile = false
vim.opt.backup = false

-- 半角スペースを「·」、タブを「→」、全角空白を「□」で表示
vim.opt.list = true
vim.opt.listchars = {
  space = "·",
  tab = "→ ",
  trail = "•",
  extends = "›",
  precedes = "‹",
  nbsp = "␣",  -- ノーブレークスペース
}

-- setup toggleterm
require("toggleterm").setup{
    open_mapping = [[<c-\>]],
    direction = 'float',
}
