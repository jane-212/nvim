local setup, configs = pcall(require, "nvim-treesitter.configs")
if not setup then
    return
end

configs.setup({
    ensure_installed = {
        "bash",
        "dockerfile",
        "go",
        "gomod",
        "json",
        "lua",
        "markdown",
        "rust",
        "sql",
        "toml",
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
})

local setup, install = pcall(require, "nvim-treesitter.install")
if not setup then
    return
end

install.prefer_git = true

vim.wo.foldmethod = 'expr'
vim.wo.foldexpr = 'nvim_treesitter#foldexpr()'
vim.wo.foldlevel = 99

