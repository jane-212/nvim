vim.g.mapleader = ","
vim.g.maplocalleader = ","

local map = vim.api.nvim_set_keymap
local opt = {noremap = true, silent = true }

map("n", "<C-h>", ":BufferLineCyclePrev<CR>", opt)
map("n", "<C-l>", ":BufferLineCycleNext<CR>", opt)
map("n", "<C-k>", "9k", opt)
map("n", "<C-j>", "9j", opt)

map('n', 'te', ':NvimTreeToggle<CR>', opt)
map('n', 'tb', ':TagbarToggle<CR>', opt)
map("n", "tt", ":ToggleTerm<CR>", opt)
map("n", "gg", ":GitUi<CR>", opt)
map("n", "fd", ":Bdelete<CR>", opt)
map("n", "md", ":MarkdownPreview<CR>", opt)
map("n", "ms", ":MarkdownPreviewStop<CR>", opt)

map("n", "<A-h>", "<C-w>h", opt)
map("n", "<A-j>", "<C-w>j", opt)
map("n", "<A-k>", "<C-w>k", opt)
map("n", "<A-l>", "<C-w>l", opt)

map("n", "sv", ":vsp<CR>", opt)
map("n", "sh", ":sp<CR>", opt)
map("n", "sc", "<C-w>c", opt)
map("n", "so", "<C-w>o", opt)

map("i", "<A-h>", "<Left>", opt)
map("i", "<A-j>", "<Down>", opt)
map("i", "<A-k>", "<Up>", opt)
map("i", "<A-l>", "<Right>", opt)
map("i", "<A-o>", "<ESC>o", opt)

map("i", "<C-e>", "<ESC>I", opt)
map("i", "<C-b>", "<ESC>A", opt)
map("i", "<C-o>", "<ESC>:w<CR>", opt)

map("i", "<ESC>", "<ESC>:w<CR>", opt)

map("v", "<C-o>", "<ESC>", opt)

map("t", "<ESC>", "<C-\\><C-n>", opt)
