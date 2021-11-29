local wk = require("which-key")
local Terminal = require('toggleterm.terminal').Terminal
local toggle_float = function()
  local float = Terminal:new({direction = "float"})
  return float:toggle()
end
local toggle_lazygit = function()
  local lazygit = Terminal:new({cmd = 'lazygit', direction = "float"})
  return lazygit:toggle()
end

local mappings = {
  qq = {":q<CR>", "Quit"},

  fed = {":e ~/.config/nvim/init.lua<CR>", "edit config"},
  fs = {":w<CR>", "Save file"},
  fr = {":Telescope oldfiles<cr>", "recent files"},

  bd = {":bdelete<CR>", "Close buffer"},
  bb = {":Telescope buffers<cr>", "list buffers"},

  t = {t = {":ToggleTerm<cr>", "Split Below"}, f = {toggle_float, "Floating Terminal"}, l = {toggle_lazygit, "LazyGit"}}
}
local opts = {prefix = '<leader>'}
wk.register(mappings, opts)
