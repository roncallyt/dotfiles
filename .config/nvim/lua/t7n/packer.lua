-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Carbon Theme
  use 'michaeldyrynda/carbon.vim'

  -- Lualine
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 
      'kyazdani42/nvim-web-devicons', 
      opt = true 
    }
  }

  -- Telescope
  use {
    'nvim-telescope/telescope.nvim', 
    tag = '0.1.x',
    requires = { 
      'nvim-lua/plenary.nvim'
    }
  }

  -- Telescope: FZF Extension
  use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }

  -- LSP
  use {
    'neovim/nvim-lspconfig',
    requires = {
      'williamboman/mason.nvim',
      'williamboman/mason-lspconfig.nvim'
    }
  }

  -- Autocompletion
  use {
    'hrsh7th/nvim-cmp',
    requires = {
      'hrsh7th/cmp-nvim-lsp',
      'L3MON4D3/LuaSnip',
      'saadparwaiz1/cmp_luasnip'
    }
  }

  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'

  -- Treesitter
  use {
    'nvim-treesitter/nvim-treesitter',
    run = function()
      local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
      ts_update()
    end,
  }
  use 'nvim-treesitter/playground'
  use 'nvim-treesitter/nvim-treesitter-context'

  use 'nvim-lua/plenary.nvim'
  use 'roncallyt/vrello.nvim'
  use 'ThePrimeagen/harpoon'

  use 'github/copilot.vim'

  use 'tpope/vim-fugitive'
end)
