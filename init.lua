vim.g.mapleader = " "

require('plugins')
require('options')
require('lualine-config')
require('bufferline-config')
require('treesitter-config')
require('nvim-tree-config')
require('autopairs-config')
require('keybindings')
require('whichkey-config')
require('telescope-config')
require('lsp')
vim.cmd('colorscheme nord')
