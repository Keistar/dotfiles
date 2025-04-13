-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- [jj] to Escape
vim.keymap.set("i", "jj", "<Esc>", { noremap = true, silent = true, desc = "Map jj to Escape in insert mode" })

-- [Ctrl + s] to Save
vim.keymap.set({ "n", "i", "v" }, "<C-s>", "<cmd>w<CR>", { noremap = true, silent = true, desc = "Save file" })

-- [Ctrl + hjkl] to Move
vim.keymap.set("n", "<C-h>", "<C-w>h", { noremap = true, silent = true, desc = "Move to left window" })
vim.keymap.set("n", "<C-j>", "<C-w>j", { noremap = true, silent = true, desc = "Move to bottom window" })
vim.keymap.set("n", "<C-k>", "<C-w>k", { noremap = true, silent = true, desc = "Move to top window" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { noremap = true, silent = true, desc = "Move to right window" })

-- [Alt + hjkl] to Risize window
vim.keymap.set(
  "n",
  "<A-h>",
  "<cmd>resize -2<CR>",
  { noremap = true, silent = true, desc = "Resize window horizontally smaller" }
)
vim.keymap.set(
  "n",
  "<A-l>",
  "<cmd>resize +2<CR>",
  { noremap = true, silent = true, desc = "Resize window horizontally larger" }
)
vim.keymap.set(
  "n",
  "<A-j>",
  "<cmd>vertical resize -2<CR>",
  { noremap = true, silent = true, desc = "Resize window vertically smaller" }
)
vim.keymap.set(
  "n",
  "<A-k>",
  "<cmd>vertical resize +2<CR>",
  { noremap = true, silent = true, desc = "Resize window vertically larger" }
)
