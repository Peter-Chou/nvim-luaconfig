local wk = require("which-key")
local mappings = {
  qq = {":q<CR>", "Quit"},

  fed = {":e ~/.config/nvim/init.lua<CR>", "edit config"},
  fs = {":w<CR>", "Save file"},
  fr = {":Telescope oldfiles<cr>", "recent files"},

  bd = {":bdelete<CR>", "Close buffer"},
  bb = {":Telescope buffers<cr>", "list buffers"}
}
local opts = {prefix = '<leader>'}
wk.register(mappings, opts)
