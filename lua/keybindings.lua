vim.g.mapleader = ","
vim.g.maplocalleader = ","

local map = vim.api.nvim_set_keymap
local opt = {noremap = true, silent = true }

map("n", "<C-h>", ":BufferLineCyclePrev<CR>", opt)
map("n", "<C-l>", ":BufferLineCycleNext<CR>", opt)
map("n", "<C-u>", "9k", opt)
map("n", "<C-d>", "9j", opt)

map('n', 'te', ':NvimTreeToggle<CR>', opt)
map("n", "tt", ":ToggleTerm<CR>", opt)
map("n", "gg", ":GitUi<CR>", opt)
map("n", "fd", ":Bdelete<CR>", opt)
map("n", "md", ":MarkdownPreview<CR>", opt)
map("n", "ms", ":MarkdownPreviewStop<CR>", opt)

map("n", "<A-h>", "<C-w>h", opt)
map("n", "<A-j>", "<C-w>j", opt)
map("n", "<A-k>", "<C-w>k", opt)
map("n", "<A-l>", "<C-w>l", opt)

map("i", "<C-b>", "<ESC>I", opt)
map("i", "<C-e>", "<ESC>A", opt)
map("i", "<ESC>", "<ESC>:w<CR>", opt)

