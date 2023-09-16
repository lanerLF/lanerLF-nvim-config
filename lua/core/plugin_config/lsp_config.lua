require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = { "lua_ls" }
})

local on_attach = function (_, _)
  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
end

--local capabilities = vim.lsp.protocol.make_client_capabilities()
local capabilities = require('cmp_nvim_lsp').default_capabilities()

require("lspconfig").emmet_ls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = { "css", "eruby", "html", "javascript", "javascriptreact", "less", "sass", "scss", "svelte", "pug", "typescriptreact", "vue" },
  init_options = {
    html = {
      options = {
        ["bem.enabled"] = true,
      },
    },
  }
}

require("lspconfig").lua_ls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  settings = {
    Lua = {
      diagnostics = {
        globals = { "vim" },
      },
    },
  },
}

require("lspconfig").html.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}

require("lspconfig").volar.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}

require("lspconfig").cssls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}
