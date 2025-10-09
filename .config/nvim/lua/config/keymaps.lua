-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set
map(
  "n",
  "<C-f>",
  [[:%s///g<Left><Left><Left>]],
  { noremap = true, silent = false, desc = "Search and Replace in file" }
)

map("n", "gf", function()
  if require("obsidian").util.cursor_on_markdown_link() then
    return "<cmd>ObsidianFollowLink<CR>"
  else
    return "gf"
  end
end, { noremap = false, expr = true })

-- Toggle transparency for Catppuccin
local transparent = false
map("n", "<leader>ut", function()
  transparent = not transparent
  require("catppuccin").setup({
    transparent_background = transparent,
  })
  vim.cmd.colorscheme("catppuccin")
  vim.notify("Catppuccin transparency: " .. (transparent and "ON" or "OFF"))
end, { desc = "Toggle Catppuccin Transparent BG" })

map("n", "<C-a>", "ggVG", { noremap = true, silent = false, desc = "Select the whole buffer" })
