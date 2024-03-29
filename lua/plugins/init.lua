return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  -- use 'arcticicestudio/nord-vim'
  use 'Mofiqul/dracula.nvim'
  use 'rose-pine/neovim'
  use {'nvim-treesitter/nvim-treesitter', run = ":TSUpdate"}

  use {'hoob3rt/lualine.nvim', requires = {'kyazdani42/nvim-web-devicons', opt = true}}
  use {'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons'}
  use {'kyazdani42/nvim-tree.lua', requires = 'kyazdani42/nvim-web-devicons'}
  use {'windwp/nvim-ts-autotag'}
  use {'p00f/nvim-ts-rainbow'}
  use {'windwp/nvim-autopairs'}
  use {'folke/which-key.nvim'}
  use {'nvim-telescope/telescope.nvim', requires = {{'nvim-lua/plenary.nvim'}}}
  use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make'}
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-vsnip'
  use 'hrsh7th/vim-vsnip'
  use 'onsails/lspkind-nvim'

  use 'norcalli/nvim-colorizer.lua'
  use 'glepnir/dashboard-nvim'
  use "lukas-reineke/indent-blankline.nvim"
  use 'lukas-reineke/format.nvim'
  use "akinsho/toggleterm.nvim"
  use "terrortylor/nvim-comment"

  use "nvim-telescope/telescope-project.nvim"

  use "blackCauldron7/surround.nvim"
  use {
    'phaazon/hop.nvim',
    branch = 'v1.2' -- optional but strongly recommended
  }
  use {'TimUntersberger/neogit', requires = 'nvim-lua/plenary.nvim'}

  use "editorconfig/editorconfig-vim"

  use {'sindrets/diffview.nvim', requires = 'nvim-lua/plenary.nvim'}
  use "airblade/vim-rooter"
end)
