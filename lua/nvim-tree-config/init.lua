require'nvim-tree'.setup {
  auto_close = true,
  update_cwd = true,
  update_focused_file = {enable = true, update_cwd = true},
  view = {width = 25},
  git = {enable = true, ignore = false, timeout = 500}
}
vim.g.nvim_tree_indent_markers = 1
