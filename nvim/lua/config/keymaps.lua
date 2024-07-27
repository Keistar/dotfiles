local map = LazyVim.safe_keymap_set
local vks = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Increment/Decrement
vks("n", "+", "<C-a>")
vks("n", "-", "<C-x>")

-- Select all
vks("n", "<C-a>", "ggVG")

-- jj to Esc
vks("i", "jj", "<Esc>")
-- jk to Esc & Save
vks("i", "jk", "<Esc><cmd>w<cr>")

-- Save file
map("n", "<Leader>w", ":update<Return>", opts)
map("n", "<Leader>q", ":quit<Return>", opts)
map("n", "<Leader>Q", ":qa<Return>", opts)

-- Tabs
map("n", "te", ":tabedit")
map("n", "<tab>", ":tabnext<Return>", opts)
map("n", "<S-tab>", ":tabprev<Return>", opts)
map("n", "tw", ":tabclose<Return>", opts)
