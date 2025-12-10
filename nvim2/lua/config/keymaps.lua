local map = vim.keymap.set
local opts = { silent = true }

-- モードの説明:
-- n: ノーマルモード (Normal)
-- v: ビジュアルモード (Visual)
-- i: 挿入モード (Insert)
-- t: ターミナルモード (Terminal)
--
-- C-c でハイライトを消す
map("n", "<C-c>", "<cmd>nohlsearch<CR>", opts)

-- Window移動 (Ctrl + h,j,k,l)
map("n", "<C-h>", "<C-w>h", opts)
map("n", "<C-j>", "<C-w>j", opts)
map("n", "<C-k>", "<C-w>k", opts)
map("n", "<C-l>", "<C-w>l", opts)

map("i", "jj", "<esc>", { desc = "Back to Normal mode" })
map("i", "jk", "<esc>:w<cr>", { desc = "Back to Normal mode (save file)" })
