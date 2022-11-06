local keymap = vim.api.nvim_set_keymap
local opt = { noremap = true, silent = true }

keymap('n', 'ge', ':NvimTreeToggle<CR>', opt)
keymap('n', 'gb', ':TagbarToggle<CR>', opt)
keymap("n", "gt", ":ToggleTerm<CR>", opt)
keymap("n", "gj", ":Bdelete<CR>", opt)
keymap("n", "gf", ":Format<CR>", opt)
keymap("n", "gk", ":Telescope find_files<CR>", opt)
keymap("n", "gl", ":Telescope live_grep<CR>", opt)

keymap("n", "<C-h>", "<C-w>h", opt)
keymap("n", "<C-j>", "<C-w>j", opt)
keymap("n", "<C-k>", "<C-w>k", opt)
keymap("n", "<C-l>", "<C-w>l", opt)
keymap("n", "<C-p>", ":BufferLineCyclePrev<CR>", opt)
keymap("n", "<C-n>", ":BufferLineCycleNext<CR>", opt)

keymap("n", "gsv", ":vsp<CR>", opt)
keymap("n", "gsh", ":sp<CR>", opt)
keymap("n", "gsc", "<C-w>c", opt)
keymap("n", "gso", "<C-w>o", opt)

