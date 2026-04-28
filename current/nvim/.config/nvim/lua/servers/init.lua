local on_attach = require('utils.lsp').on_attach
local lspconfig = require('lspconfig')


lspconfig.lua_ls.setup({
  on_attach = on_attach,
  settings = {
    Lua = {
      diagnostics = {
        globals = { "vim"},
      },
      workspace = {
        library = {
          vim.fn.expand("$VIMRUNTIME/lua"),
          vim.fn.expand("$XDG_CONFIG_HOME") .. "/nvim/lua"
        }
      }
    }
  }
})
