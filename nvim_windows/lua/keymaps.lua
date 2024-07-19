vim.g.mapleader = "<Space>"

vim.keymap.set("i", "jj", "<Esc>", { silent = true, noremap = true })
vim.keymap.set("i", "っj", "<Esc>", { silent = true, noremap = true })
vim.keymap.set("i", "<C-j>", "<Down>", { noremap = true })
vim.keymap.set("i", "<C-k>", "<Up>", { noremap = true })
vim.keymap.set("i", "<C-h>", "<Left>", { noremap = true })
vim.keymap.set("i", "<C-l>", "<Right>", { noremap = true })
vim.keymap.set("n", "あ", "a", { noremap = true })
vim.keymap.set("n", "い", "i", { noremap = true })
vim.keymap.set("n", "う", "u", { noremap = true })
vim.keymap.set("n", "え", "e", { noremap = true })
vim.keymap.set("n", "っy", "yy", { noremap = true })
vim.keymap.set("n", "っd", "dd", { noremap = true })
vim.keymap.set("", ";;", "$", { noremap = true })
vim.keymap.set("i", "{", "{}<Left>", { noremap = true })
vim.keymap.set("i", "[", "[]<Left>", { noremap = true })
vim.keymap.set("i", "(", "()<Left>", { noremap = true })
vim.keymap.set("i", '"', '""<Left>', { noremap = true })
vim.keymap.set("i", "'", "''<Left>", { noremap = true })
vim.keymap.set("", "<S-h>", "0", { noremap = true })
vim.keymap.set("", "<S-l>", "$", { noremap = true })
vim.keymap.set("n", "<leader>s", ":w<CR>", { noremap = true })
vim.keymap.set("n", "Y", "y$")
vim.keymap.set("n", "<C-n>", ":NeoTreeShowToggle<Return>", { noremap = true, silent = true })
vim.keymap.set("n", "<C-j>", ":bnext<CR>", { silent = true, noremap = true })
vim.keymap.set("n", "<C-k>", ":bprev<CR>", { silent = true, noremap = true })
