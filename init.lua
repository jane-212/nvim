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

require('nvim-lsp-installer').setup{}

local nvim_lsp = require('lspconfig')
local util = require "lspconfig/util"

local on_attach = function(client, bufnr)
  local bufopts = { noremap=true, silent=true, buffer=bufnr }
  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
  vim.keymap.set('n', 'gh', vim.lsp.buf.hover, bufopts)
  vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
end

nvim_lsp.rust_analyzer.setup{
  on_attach = on_attach,
}

nvim_lsp.gopls.setup {
  on_attach = on_attach,
  cmd = {"gopls", "serve"},
  filetypes = {"go", "gomod"},
  root_dir = util.root_pattern("go.work", "go.mod", ".git"),
  settings = {
    gopls = {
      analyses = {
        unusedparams = true,
      },
      staticcheck = true,
    },
  },
}

function go_org_imports(wait_ms)
  local params = vim.lsp.util.make_range_params()
  params.context = {only = {"source.organizeImports"}}
  local result = vim.lsp.buf_request_sync(0, "textDocument/codeAction", params, wait_ms)
  for cid, res in pairs(result or {}) do
    for _, r in pairs(res.result or {}) do
      if r.edit then
        local enc = (vim.lsp.get_client_by_id(cid) or {}).offset_encoding or "utf-16"
        vim.lsp.util.apply_workspace_edit(r.edit, enc)
      end
    end
  end
end

vim.cmd([[autocmd BufWritePre *.go lua go_org_imports()]])
vim.cmd([[autocmd FileType go setlocal omnifunc=v:lua.vim.lsp.omnifunc]])

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
