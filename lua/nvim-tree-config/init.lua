require'nvim-tree'.setup {
  auto_close = true,
  view = {
    width = 25
  },
  git = {
    enable = true,
    ignore = true,
    timeout = 500,
  }
}
vim.g.nvim_tree_indent_markers = 1
