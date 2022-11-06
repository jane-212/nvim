local opt = vim.opt

-- line numbers
opt.relativenumber = true
opt.number = true

-- tabs & indentation
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

-- line wrapping
opt.wrap = false

-- search settings
opt.ignorecase = true
opt.smartcase = true

-- cursor line
opt.cursorline = true
opt.guicursor = "a:block"

-- appearance
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "no"

-- backspace
opt.backspace = "indent,eol,start"

-- clipboard
opt.clipboard:append("unnamedplus")

-- split windows
opt.splitright = true
opt.splitbelow = true

opt.iskeyword:append("-")

-- swapfile & undofile
opt.swapfile = false
opt.undofile = false
opt.backup = false
opt.writebackup = false

-- syntax & cindent
opt.syntax = "on"
opt.cindent = true

opt.scrolloff = 5
opt.updatetime = 100
opt.incsearch = true
opt.encoding = "utf-8"
opt.showmode = false
