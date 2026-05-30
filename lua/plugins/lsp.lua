-- lua/plugins/lsp.lua
return {
  "neovim/nvim-lspconfig",

  dependencies = {
    "hrsh7th/cmp-nvim-lsp",
  },

  config = function()
    local lspconfig = require("lspconfig")

    -- capabilities for autocomplete
    local capabilities = require("cmp_nvim_lsp").default_capabilities()

    -- Lua
    lspconfig.lua_ls.setup({
      capabilities = capabilities,
    })

    -- Python
    lspconfig.pyright.setup({
      capabilities = capabilities,
    })

    -- JavaScript / TypeScript
    lspconfig.ts_ls.setup({
      capabilities = capabilities,
    })
  end,
}

