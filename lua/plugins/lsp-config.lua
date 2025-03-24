return {
   {
      "williamboman/mason.nvim",
      config = function()
         require("mason").setup({
            ui = {
               icons = {
                  package_installed = "✓",
                  package_pending = "➜",
                  package_uninstalled = "✗"
               }
            }
         })
      end
   },
   {
      "williamboman/mason-lspconfig.nvim",
      lazy = false,
      opts = {
         auto_install = true,
      },
   --    config = function()
   --       require("mason-lspconfig").setup({
   --          ensure_installed = { "lua_ls", "stylua" }
   --       })
   --    end
   },
   {
      "neovim/nvim-lspconfig",
      config = function()
         local lspconfig = require('lspconfig')
         lspconfig.lua_ls.setup({
            capabitities = capabilities,
         })
         lspconfig.ts_ls.setup({
            capabitities = capabilities
         })

         vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
         vim.keymap.set({ 'n' }, '<leader>ca', vim.lsp.buf.code_action, {})
      end
   }
}
