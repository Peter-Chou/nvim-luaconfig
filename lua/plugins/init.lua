return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use 'arcticicestudio/nord-vim'
  use {'nvim-treesitter/nvim-treesitter', run = ":TSUpdate"}
end)
