local map = vim.keymap.set
local opts = { silent = true }

-- モードの説明:
-- n: ノーマルモード (Normal)
-- v: ビジュアルモード (Visual)
-- i: 挿入モード (Insert)
-- t: ターミナルモード (Terminal)

-- -- 💡 よく使う基本操作のキーマッピング -- --

-- C-c でハイライトを消す
map("n", "<C-c>", "<cmd>nohlsearch<CR>", opts)

-- Window移動 (Ctrl + h,j,k,l)
map("n", "<C-h>", "<C-w>h", opts)
map("n", "<C-j>", "<C-w>j", opts)
map("n", "<C-k>", "<C-w>k", opts)
map("n", "<C-l>", "<C-w>l", opts)

-- リーダーキー (スペースキー) を使った便利マッピング
-- バッファを保存
map({ "n", "i", "v" }, "<leader>w", "<cmd>w<CR>", opts)

-- 全てを保存して終了
map("n", "<leader>Q", "<cmd>wa<CR><cmd>qa<CR>", opts)
