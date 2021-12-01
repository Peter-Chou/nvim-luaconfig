require'format'.setup {
  ["*"] = {
    {cmd = {"sed -i 's/[ \t]*$//'"}} -- remove trailing whitespace
  },
  html = {{cmd = {"prettier -w"}}},
  css = {{cmd = {"prettier -w"}}},
  json = {{cmd = {"prettier -w"}}},
  yaml = {{cmd = {"prettier -w"}}},
  javascript = {{cmd = {"prettier -w", "./node_modules/.bin/eslint --fix"}}},
  javascriptreact = {{cmd = {"prettier -w", "./node_modules/.bin/eslint --fix"}}},
  typescript = {{cmd = {"prettier -w", "./node_modules/.bin/eslint --fix"}}},
  typescriptreact = {{cmd = {"prettier -w", "./node_modules/.bin/eslint --fix"}}},
  lua = {
    {
      cmd = {
        function(file)
          return string.format(
                     'lua-format -i --no-keep-simple-function-one-line --no-break-after-operator --column-limit=150 --break-after-table-lb --indent-width=2 %s',
                     file)
        end
      }
    }
  },
  cpp = {
    {
      cmd = {
        function(file)
          return string.format('clang-format --assume-filename %s', file)
        end
      }
    }
  },
  python = {

    {cmd = {"yapf -i", "isort"}}
    -- {
    --   cmd = {
    --     function(file)
    --       return string.format('yapf --quiet %s', file)
    --     end
    --   }
    -- }
  },
  go = {
    {
      cmd = {
        function(file)
          return string.format("gofmt -w %s", file)
        end
      },
      tempfile_postfix = ".tmp"
    }
  }
}

vim.cmd('autocmd BufWritePost * FormatWrite')
