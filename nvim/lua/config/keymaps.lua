local map = LazyVim.safe_keymap_set
local opts = { noremap = true, silent = true }

-- Increment/Decrement
map("n", "+", "<C-a>")
map("n", "-", "<C-x>")

-- Select all
map("n", "<C-a>", "ggVG")

-- jj to Esc
map("i", "jj", "<Esc>")

-- Save file
map("n", "<Leader>w", ":update<Return>", opts)
map("n", "<Leader>q", ":quit<Return>", opts)
map("n", "<Leader>Q", ":qa<Return>", opts)

-- Tabs
map("n", "te", ":tabedit")
map("n", "<tab>", ":tabnext<Return>", opts)
map("n", "<S-tab>", ":tabprev<Return>", opts)
map("n", "tw", ":tabclose<Return>", opts)
