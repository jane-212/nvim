vim.g.mapleader = ","
vim.g.maplocalleader = ","

local map = vim.api.nvim_set_keymap
local opt = {noremap = true, silent = true }

map("n", "<C-h>", ":BufferLineCyclePrev<CR>", opt)
map("n", "<C-l>", ":BufferLineCycleNext<CR>", opt)
map("n", "<C-k>", "9k", opt)
map("n", "<C-j>", "9j", opt)
map("n", "<C-o>", ":q<CR>", opt)
map("n", "<C-s>", ":w<CR>", opt)

map('n', 'te', ':NvimTreeToggle<CR>', opt)
map('n', 'tb', ':TagbarToggle<CR>', opt)
map("n", "tt", ":ToggleTerm<CR>", opt)
map("n", "gg", ":GitUi<CR>", opt)
map("n", "fd", ":Bdelete<CR>", opt)
map("n", "md", ":MarkdownPreview<CR>", opt)
map("n", "ms", ":MarkdownPreviewStop<CR>", opt)
map("n", "ff", ":Telescope find_files<CR>", opt)
map("n", "fl", ":Telescope live_grep<CR>", opt)
map("n", "fb", ":Telescope buffers<CR>", opt)
map("n", "fh", ":Telescope help_tags<CR>", opt)

map("n", "<Leader>y", "\"+y", opt)
map("n", "<Leader>p", "\"+p", opt)

map("n", "<A-h>", "<C-w>h", opt)
map("n", "<A-j>", "<C-w>j", opt)
map("n", "<A-k>", "<C-w>k", opt)
map("n", "<A-l>", "<C-w>l", opt)
map("n", "<A-e>", "$", opt)
map("n", "<A-b>", "0", opt)

map("n", "sv", ":vsp<CR>", opt)
map("n", "sh", ":sp<CR>", opt)
map("n", "sc", "<C-w>c", opt)
map("n", "so", "<C-w>o", opt)

map("i", "<A-h>", "<Left>", opt)
map("i", "<A-j>", "<Down>", opt)
map("i", "<A-k>", "<Up>", opt)
map("i", "<A-l>", "<Right>", opt)
map("i", "<A-o>", "<ESC>o", opt)
map("i", "<A-O>", "<ESC>O", opt)

map("i", "<C-e>", "<ESC>I", opt)
map("i", "<C-b>", "<ESC>A", opt)
map("i", "<C-s>", "<ESC>:w<CR>", opt)
map("i", "<C-o>", "<ESC>", opt)

map("v", "<C-o>", "<ESC>", opt)

map("t", "<C-o>", "<C-\\><C-n>", opt)

vim.cmd([[
function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <TAB> coc#pum#visible() ? coc#pum#next(1): CheckBackspace() ? "\<Tab>" : coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm(): "\<CR>\<c-r>=coc#on_enter()\<CR>"

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
]])
