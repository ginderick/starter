-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set
local defaults = { noremap = true, silent = true }

map({ "i", "v" }, "jk", "<Esc>", defaults)
map("n", "<C-d>", "<C-d>zz")
map("n", "<C-u>", "<C-u>zz")
map("n", "n", "nzzzv")
map("n", "N", "Nzzzv")
map("x", "<leader>p", '"_dP')

map("n", "<leader>gl", function()
  require("neogit").action("log", "log_all_branches", { "--graph", "--decorate", "--color", "--all" })()
end, { desc = "Neogit Log (All Branches)" })
