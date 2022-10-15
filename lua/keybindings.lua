-- vim.g.mapleader = ","
-- vim.g.maplocalleader = ","

local map = vim.api.nvim_set_keymap
local opt = { noremap = true, silent = true }
-- local sopt = {silent = true }

-- map("n", "<C-h>", "4h", opt)
-- map("n", "<C-l>", "4l", opt)
-- map("n", "<C-k>", "4k", opt)
-- map("n", "<C-j>", "4j", opt)
-- map("n", "<C-o>", ":q<CR>", opt)
-- map("n", "<C-a>", "<C-A>", opt)
-- map("n", "<C-x>", "<C-X>", opt)
-- map("n", "<C-y>", "\"+y", opt)
-- map("n", "<C-p>", "\"+p", opt)
-- map("n", "<C-u>", "<C-o>", opt)
-- map("n", "<C-s>", "<C-u>", opt)

map('n', 'ge', ':NvimTreeToggle<CR>', opt)
map('n', 'gb', ':TagbarToggle<CR>', opt)
map("n", "gt", ":ToggleTerm<CR>", opt)
map("n", "gj", ":Bdelete<CR>", opt)
map("n", "gk", ":Telescope find_files<CR>", opt)
map("n", "gl", ":Telescope live_grep<CR>", opt)
-- map("n", "fm", "gg=G", opt)
-- map("n", "<SPACE>", ":", opt)
-- map("n", "w", "f", opt)
-- map("n", "W", "F", opt)
-- map("n", "yw", "yf", opt)
-- map("n", "dw", "df", opt)
-- map("n", "cw", "cf", opt)
-- map("n", "yW", "yF", opt)
-- map("n", "dW", "dF", opt)
-- map("n", "cW", "cF", opt)
-- map("n", "fw", "gcc", sopt)
-- map("n", "ya", "yaw", opt)
-- map("n", "da", "daw", opt)
-- map("n", "ca", "caw", opt)
-- map("n", "yi", "yiw", opt)
-- map("n", "di", "diw", opt)
-- map("n", "ci", "ciw", opt)

map("n", "<C-h>", "<C-w>h", opt)
map("n", "<C-j>", "<C-w>j", opt)
map("n", "<C-k>", "<C-w>k", opt)
map("n", "<C-l>", "<C-w>l", opt)
map("n", "<C-p>", ":BufferLineCyclePrev<CR>", opt)
map("n", "<C-n>", ":BufferLineCycleNext<CR>", opt)

-- map("n", "L", "$", opt)
-- map("n", "H", "0", opt)
-- map("n", "J", "L", opt)
-- map("n", "K", "H", opt)

map("n", "gsv", ":vsp<CR>", opt)
map("n", "gsh", ":sp<CR>", opt)
map("n", "gsc", "<C-w>c", opt)
map("n", "gso", "<C-w>o", opt)

-- map("i", "<A-h>", "<Left>", opt)
-- map("i", "<A-j>", "<Down>", opt)
-- map("i", "<A-k>", "<Up>", opt)
-- map("i", "<A-l>", "<Right>", opt)

-- map("i", "<C-o>", "<ESC>", opt)

-- map("v", "fw", "gc", sopt)
-- map("v", "w", "f", opt)
-- map("v", "W", "F", opt)

-- map("v", "<C-o>", "<ESC>", opt)
-- map("v", "<C-y>", "\"+y", opt)
-- map("v", "<C-p>", "\"+p", opt)
-- map("v", "<C-h>", "4h", opt)
-- map("v", "<C-l>", "4l", opt)
-- map("v", "<C-k>", "4k", opt)
-- map("v", "<C-j>", "4j", opt)

-- map("v", "L", "$", opt)
-- map("v", "H", "0", opt)
-- map("v", "J", "L", opt)
-- map("v", "K", "H", opt)

-- map("t", "<C-o>", "<C-\\><C-n>", opt)

-- map("t", "<A-h>", "<Left>", opt)
-- map("t", "<A-j>", "<Down>", opt)
-- map("t", "<A-k>", "<Up>", opt)
-- map("t", "<A-l>", "<Right>", opt)

