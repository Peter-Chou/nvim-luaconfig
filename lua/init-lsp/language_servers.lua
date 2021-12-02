-- Setup lspconfig.
local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
local langservers = {
  'sumneko_lua',
  'clangd',
  'pyright',
  'jsonls'
}

require'lspconfig'.pyright.setup{}


require'lspconfig'.clangd.setup{
    cmd = { "clangd", "--background-index", "-j=6" },
    filetypes = { "h","c","cc", "cpp", "objc", "objcpp" }
}

require'lspconfig'.jsonls.setup {}


USER = vim.fn.expand('$USER')

local sumneko_root_path = ""
local sumneko_binary = ""

if vim.fn.has("mac") == 1 then
  sumneko_root_path = "/Users/" .. USER .. "/.config/nvim/ls/lua-language-server"
  sumneko_binary = "/Users/" .. USER .. "/.config/nvim/ls/lua-language-server/bin/macOS/lua-language-server"
elseif vim.fn.has("unix") == 1 then
  sumneko_root_path = "/home/" .. USER .. "/.config/nvim/ls/lua-language-server"
  sumneko_binary = "/home/" .. USER .. "/.config/nvim/ls/lua-language-server/bin/Linux/lua-language-server"
elseif vim.fn.has("win32") == 1 then
  sumneko_root_path = "C:\\Users\\" .. USER .. "\\AppData\\Local\\nvim\\ls\\lua-language-server"
  sumneko_binary = "C:\\Users" .. USER .. "\\AppData\\Local\\nvim\\ls\\lua-language-server\\bin\\Windows\\lua-language-server"
else
  print("Unsupported system for sumneko")
end

local runtime_path = vim.split(package.path, ';')
table.insert(runtime_path, "lua/?.lua")
table.insert(runtime_path, "lua/?/init.lua")


for _, server in ipairs(langservers) do
  if server == 'sumneko_lua' then
    require'lspconfig'[server].setup {
      cmd = {sumneko_binary, "-E", sumneko_root_path .. "/main.lua"},
      settings = {
        Lua = {
          runtime = {
            -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
            version = 'LuaJIT',
            -- Setup your lua path
            path = runtime_path
          },
          diagnostics = {
            -- Get the language server to recognize the `vim` global
            globals = {'vim'}
          },
          workspace = {
            -- Make the server aware of Neovim runtime files
            library = vim.api.nvim_get_runtime_file("", true),
            checkThirdParty = false
          },
          -- Do not send telemetry data containing a randomized but unique identifier
          telemetry = {enable = false}
        }
      }
    }
  else
    require'lspconfig'[server].setup {capabilities = capabilities}
  end
end
