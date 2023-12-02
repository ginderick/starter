-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set
local set = vim.opt
local defaults = { noremap = true, silent = true }

vim.api.nvim_set_keymap("i", "<S-Enter>", "<Esc>o", { noremap = true })
-- Insert empty line without entering insert mode
map("n", "<leader>o", ':<C-u>call append(line("."), repeat([""], v:count1))<CR>', defaults)
map("n", "<leader>O", ':<C-u>call append(line(".")-1, repeat([""], v:count1))<CR>', defaults)
