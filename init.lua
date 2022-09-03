vim.o.dir = 'c:\\Temp'
vim.opt.termguicolors = true
vim.g.rainbow_active = 1
vim.o.background = "dark"

require('plugins')
require('keybindings')

vim.cmd([[
colorscheme gruvbox
set expandtab
set tabstop=4
set shiftwidth=4
set number
set t_Co=256
]])

require('nvim-web-devicons').get_icons()

require('nvim-tree').setup{
  view = {
    hide_root_folder = true,
  }, 
}

require("bufferline").setup {
  options = {
    offsets = {{
      filetype = "NvimTree",
      text = "Workspace",
      highlight = "Directory",
      text_align = "left"
    }},

    close_command = "Bdelete! %d",
    right_mouse_command = "Bdelete! %d",
  }
}

require("toggleterm").setup{
  direction = 'float',
}

require("transparent").setup{
  enable = true,
}

require("lualine").setup{}
