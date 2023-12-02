-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set
local set = vim.opt
local defaults = { noremap = true, silent = true }

map("n", "<leader>o", ':<C-u>call append(line("."), repeat([""], v:count1))<CR>', defaults)
map("n", "<leader>O", ':<C-u>call append(line(".")-1, repeat([""], v:count1))<CR>', defaults)
map("i", "jj", "<C-o>o", defaults)
map({ "i", "v" }, "jk", "<Esc>", defaults)
