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
  q = {name = "quit", q = {":q<cr>", "Quit"}},

  ["'"] = {":ToggleTerm<cr>", "toggle terminal"},
  f = {
    name = "+file",

    e = {name = "editor", d = {":e ~/.config/nvim/init.lua<cr>", "edit config"}},
    s = {":w<cr>", "Save file"},
    r = {":Telescope oldfiles<cr>", "recent files"}
  },

  l = {
    name = "lsp",
    g = {
      name = "goto",
      d = {"<Cmd>lua vim.lsp.buf.definition()<CR>", "go to definition"},
      D = {"<Cmd>lua vim.lsp.buf.declaration()<CR>", "go to declaration"},
      i = {"<cmd>lua vim.lsp.buf.implementation()<CR>", "go to implementation"},
      r = {"<cmd>lua vim.lsp.buf.references()<CR>", "go to reference"}
    },
    t = {"<cmd>lua vim.lsp.buf.type_definition()<CR>", "type definition"},
    w = {
      name = "workspace",
      a = {"<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>", "add workspace"},
      r = {"<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>", "remove workspace"},
      l = {"<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>", "list workspaces"}
    }
  },

  b = {name = "+buffer", d = {":bdelete<cr>", "Close buffer"}, b = {":Telescope buffers<cr>", "list buffers"}},
  j = {name = "+jump", j = {"::HopChar2<cr>", "jump char2"}},

  p = {
    name = "+project",
    ["."] = {":Telescope project display_type=full<cr>", "project transient"}
    -- f = {":lua require'telescope'.extensions.project.project{}.current()<cr>", "search files in project"}
  },

  t = {
    name = "+toggle",
    v = {":set wrap!<cr>", "toggle vitual line"},
    t = {name = "terminal", t = {":ToggleTerm<cr>", "toggle terminal"}, f = {toggle_float, "toggle Floating Terminal"}}
  }
}
local opts = {prefix = '<leader>'}
wk.register(mappings, opts)
