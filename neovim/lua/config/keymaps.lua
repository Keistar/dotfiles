-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local KMS = vim.keymap.set

-- Normal mode
KMS("n", "<leader>bn", ":bn<cr>", { desc = "次のバッファ" })
KMS("n", "<leader>bp", ":bp<cr>", { desc = "前のバッファ" })
KMS("n", "<leader>bd", ":bd<cr>", { desc = "バッファの削除" })

-- Insert mode
KMS("i", "jj", "<esc>", { desc = "Back to Normal mode" })
KMS("i", "jk", "<esc>:w<cr>", { desc = "Back to Normal mode (save file)" })
