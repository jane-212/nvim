require('nvim-treesitter.configs').setup{
    ensure_installed = {
        "go",
        "rust",
        "json",
        "markdown",
    },

    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false
    },

    incremental_selection = {
        enable = true,
        keymaps = {
            init_selection = '<CR>',
            node_incremental = '<CR>',
            node_decremental = '<BS>',
            scope_incremental = '<TAB>',
        }
    },

    indent = {
        enable = true
    }
}

require('nvim-treesitter.install').prefer_git = true

vim.wo.foldmethod = 'expr'
vim.wo.foldexpr = 'nvim_treesitter#foldexpr()'
vim.wo.foldlevel = 99