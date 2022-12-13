vim.g.coc_global_extensions = {
    "coc-clangd",
    "coc-diagnostic",
    "coc-docker",
    "coc-go",
    "coc-markdownlint",
    "coc-rust-analyzer",
    "coc-sh",
    "coc-sql",
    "coc-toml"
}

local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true, expr = true, replace_keycodes = false }

function _G.check_back_space()
    local col = vim.fn.col('.') - 1
    return col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') ~= nil
end

keymap("i", "<TAB>", 'coc#pum#visible() ? coc#pum#next(1) : v:lua.check_back_space() ? "<TAB>" : coc#refresh()', opts)
keymap("i", "<S-TAB>", [[coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"]], opts)

keymap("i", "<CR>", [[coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"]], opts)

keymap("n", "gp", "<Plug>(coc-diagnostic-prev)", {silent = true})
keymap("n", "gn", "<Plug>(coc-diagnostic-next)", {silent = true})

keymap("n", "gd", "<Plug>(coc-definition)", {silent = true})
keymap("n", "gy", "<Plug>(coc-type-definition)", {silent = true})
keymap("n", "gi", "<Plug>(coc-implementation)", {silent = true})
keymap("n", "gr", "<Plug>(coc-references)", {silent = true})

function _G.show_docs()
    local cw = vim.fn.expand('<cword>')
    if vim.fn.index({'vim', 'help'}, vim.bo.filetype) >= 0 then
        vim.api.nvim_command('h ' .. cw)
    elseif vim.api.nvim_eval('coc#rpc#ready()') then
        vim.fn.CocActionAsync('doHover')
    else
        vim.api.nvim_command('!' .. vim.o.keywordprg .. ' ' .. cw)
    end
end

keymap("n", "gh", '<CMD>lua _G.show_docs()<CR>', {silent = true})

vim.api.nvim_create_augroup("CocGroup", {})
vim.api.nvim_create_autocmd("CursorHold", {
    group = "CocGroup",
    command = "silent call CocActionAsync('highlight')",
    desc = "Highlight symbol under cursor on CursorHold"
})

keymap("n", "gm", "<Plug>(coc-rename)", {silent = true})

vim.api.nvim_create_autocmd("User", {
    group = "CocGroup",
    pattern = "CocJumpPlaceholder",
    command = "call CocActionAsync('showSignatureHelp')",
    desc = "Update signature help on jump placeholder"
})

local opts = {silent = true, nowait = true}

keymap("n", "gq", "<Plug>(coc-fix-current)", opts)

vim.api.nvim_create_user_command("Format", "call CocAction('format')", {})

vim.opt.statusline:prepend("%{coc#status()}%{get(b:,'coc_current_function','')}")

