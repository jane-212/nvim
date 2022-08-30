vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  use {
    "ellisonleao/gruvbox.nvim",
    requires = {"rktjmp/lush.nvim"}
  }

  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons',
    }
  }

  use {
    "akinsho/bufferline.nvim",
    requires = {
      "kyazdani42/nvim-web-devicons",
      "moll/vim-bbye"
    }
  }

  use 'neovim/nvim-lspconfig'

  use 'hrsh7th/nvim-cmp'

  use 'hrsh7th/cmp-nvim-lsp'

  use 'hrsh7th/cmp-vsnip'

  use 'hrsh7th/cmp-path'

  use 'hrsh7th/cmp-buffer'

  use 'simrat39/rust-tools.nvim'

  use 'hrsh7th/vim-vsnip'

  use 'nvim-lua/popup.nvim'

  use 'nvim-lua/plenary.nvim'

  use 'brneor/gitui.nvim'

  use {
    "akinsho/toggleterm.nvim",
    tag = 'v2.*',
  }

  use 'vim-airline/vim-airline'

  use 'jiangmiao/auto-pairs'

  use 'xiyaowong/nvim-transparent'

  use({
    "iamcco/markdown-preview.nvim",
    run = function() vim.fn["mkdp#util#install"]() end,
  })
end)