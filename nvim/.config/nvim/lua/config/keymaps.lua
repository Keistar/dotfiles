-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

KM = vim.keymap

-- Normal mode
KM.set("n", "<leader>bn", ":bn<cr>", { desc = "次のバッファ" })
KM.set("n", "<leader>bp", ":bp<cr>", { desc = "前のバッファ" })
KM.set("n", "<leader>bd", ":bd<cr>", { desc = "バッファの削除" })

-- Insert mode
KM.set("i", "jj", "<esc>", { desc = "ノーマルモード移行" })
KM.set("i", "jk", "<esc>:w<cr>", { desc = "ノーマルモード移行（ファイル保存）" })
