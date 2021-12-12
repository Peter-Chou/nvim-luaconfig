local map = vim.api.nvim_set_keymap

-- map the leader key
map('n', '<Space>', '', {})
vim.g.mapleader = ' '

map('i', 'fd', '<ESC>', {noremap = true, silent = false})

map('v', '<', '<gv', {noremap = true, silent = false})
map('v', '>', '>gv', {noremap = true, silent = false})

map('n', '<C-h>', '<C-w>h', {noremap = true, silent = false})
map('n', '<C-l>', '<C-w>l', {noremap = true, silent = false})
map('n', '<C-j>', '<C-w>j', {noremap = true, silent = false})
map('n', '<C-k>', '<C-w>k', {noremap = true, silent = false})

map('n', '<C-s>', ':Telescope current_buffer_fuzzy_find fuzzy=false case_mode=ignore_case<cr>', {noremap = true, silent = false})

map('n', '<leader>ft', ':NvimTreeToggle<CR>', {noremap = true, silent = true})
map('n', '<leader><TAB>', ':bprevious<CR>', {noremap = true, silent = true})
