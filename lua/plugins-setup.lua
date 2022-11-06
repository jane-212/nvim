local status, packer = pcall(require, "packer")
if not status then
    return
end

return packer.startup(function(use)
    use("wbthomason/packer.nvim")

    use("morhetz/gruvbox") -- colorscheme

    use("kyazdani42/nvim-web-devicons") -- icons

    use("kyazdani42/nvim-tree.lua") -- file explorer

    use("moll/vim-bbye") -- bufferline support

    use("akinsho/bufferline.nvim")

    use("akinsho/toggleterm.nvim")

    use("jiangmiao/auto-pairs")

    use("preservim/tagbar")

    use("luochen1990/rainbow")

    use({"neoclide/coc.nvim", branch = "release"})

    use("nvim-lualine/lualine.nvim")

    use("glepnir/dashboard-nvim")

    use("nvim-lua/plenary.nvim") -- telescope support

    use("nvim-telescope/telescope.nvim")

    use("tpope/vim-commentary")

    use("Pocco81/auto-save.nvim")

    use("nvim-treesitter/nvim-treesitter")
end)
