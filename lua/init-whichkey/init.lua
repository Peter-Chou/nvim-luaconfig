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
  q = {name = "quit", q = {":q<CR>", "Quit"}},

  ["'"] = {":ToggleTerm<cr>", "toggle terminal"},
  f = {
    name = "+file",

    e = {name = "editor", d = {":e ~/.config/nvim/init.lua<CR>", "edit config"}},
    s = {":w<CR>", "Save file"},
    r = {":Telescope oldfiles<cr>", "recent files"}
  },

  b = {name = "+buffer", d = {":bdelete<CR>", "Close buffer"}, b = {":Telescope buffers<cr>", "list buffers"}},

  p = {
    name = "+project",
    ["."] = {":Telescope project display_type=full<CR>", "project transient"}
    -- f = {":lua require'telescope'.extensions.project.project{}.current()<cr>", "search files in project"}
  },

  t = {name = "+toggle", t = {name = "terminal", t = {":ToggleTerm<cr>", "toggle terminal"}, f = {toggle_float, "toggle Floating Terminal"}}}
}
local opts = {prefix = '<leader>'}
wk.register(mappings, opts)
