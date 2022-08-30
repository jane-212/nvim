require('plugins')
require('keybindings')

require('nvim-tree').setup{
  view = {
    hide_root_folder = true,
  },
}

vim.opt.termguicolors = true
require("bufferline").setup {
  options = {
    diagnostics = "nvim_lsp",

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

require('nvim-web-devicons').get_icons()

vim.o.background = "dark"

vim.o.dir = 'c:\\Temp'

require('rust-tools').setup{
    tools = {
        runnables = {
            use_telescope = true
        },
        inlay_hints = {
            auto = true,
            show_parameter_hints = false,
            parameter_hints_prefix = "",
            other_hints_prefix = "",
        },
    },

    server = {
        settings = {
            ["rust-analyzer"] = {
                checkOnSave = {
                    command = "clippy"
                },
            }
        }
    },
}

local nvim_lsp = require('lspconfig')

local cmp = require('cmp')

cmp.setup{
  snippet = {
    expand = function(args)
        vim.fn["vsnip#anonymous"](args.body)
    end,
  },
  mapping = {
    ['<C-p>'] = cmp.mapping.select_prev_item(),
    ['<C-n>'] = cmp.mapping.select_next_item(),
    -- Add tab support
    ['<S-Tab>'] = cmp.mapping.select_prev_item(),
    ['<Tab>'] = cmp.mapping.select_next_item(),
    ['<C-d>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.close(),
    ['<CR>'] = cmp.mapping.confirm({
      behavior = cmp.ConfirmBehavior.Insert,
      select = true,
    })
  },

  sources = {
    { name = 'nvim_lsp' },
    { name = 'vsnip' },
    { name = 'path' },
    { name = 'buffer' },
  },
}

require("toggleterm").setup{
  direction = 'float',
}

require("transparent").setup({
  enable = true,
})

vim.cmd([[colorscheme gruvbox]])
vim.cmd([[set expandtab]])
vim.cmd([[set tabstop=4]])
vim.cmd([[set shiftwidth=4]])
