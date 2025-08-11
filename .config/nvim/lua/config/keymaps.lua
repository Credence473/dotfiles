-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- local map = LazyVim.safe_keymap_set

vim.keymap.set(
    "n",
    "<C-f>",
    [[:%s///g<Left><Left><Left>]],
    { noremap = true, silent = false, desc = "Search and Replace in file" }
)
