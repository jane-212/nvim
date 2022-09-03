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

  use 'brneor/gitui.nvim'

  use {
    "akinsho/toggleterm.nvim",
    tag = 'v2.*',
  }

  use 'jiangmiao/auto-pairs'

  use 'xiyaowong/nvim-transparent'

  use({
    "iamcco/markdown-preview.nvim",
    run = function() vim.fn["mkdp#util#install"]() end,
  })

  use 'preservim/tagbar'

  use 'luochen1990/rainbow'

  use {'neoclide/coc.nvim', branch = 'release'}

  use 'Yggdroot/indentLine'

  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
end)