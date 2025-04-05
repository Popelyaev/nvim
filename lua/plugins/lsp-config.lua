return {
   {
      "williamboman/mason.nvim",
      config = function()
         require("mason").setup({
            ui = {
               icons = {
                  package_installed = "✓",
                  package_pending = "➜",
                  package_uninstalled = "✗",
               },
            },
         })
      end,
   },
   {
      "williamboman/mason-lspconfig.nvim",
      -- lazy = false,
      opts = {
         auto_install = true,
      },
      config = function()
         require("mason-lspconfig").setup({
            ensure_installed = { "lua_ls", "ts_ls", "emmet_language_server", "cssls" },
         })
      end,
   },
   {
      "neovim/nvim-lspconfig",
      config = function()
         local lspconfig = require("lspconfig")
         local capabilities = require("cmp_nvim_lsp").default_capabilities()
         lspconfig.lua_ls.setup({
            capabilities = capabilities,
            filetypes = {
               "lua",
            },
         })
         lspconfig.ts_ls.setup({
            on_attach = function(client, bufnr)
               -- Отключаем автозапуск форматирования в ts_ls
               client.server_capabilities.documentFormattingProvider = false
               client.server_capabilities.documentRangeFormattingProvider = false
            end,
            capabilities = capabilities,
            filetypes = {
               "javascript",
               "typescript",
               "javascriptreact",
               "typescriptreact",
               "css",
               "html",
            },
         })
         lspconfig.emmet_language_server.setup({
            capabilities = capabilities,
            filetypes = { "html", "css", "javascriptreact", "typescriptreact", "vue", "svelte" },
            init_options = {
               --- Настройки для работы в тегах <style>
               embeddedLanguages = {
                  css = true
               }
            }
         })
         lspconfig.cssls.setup({
            capabilities = capabilities,
            filetypes = {
               "css",
               "scss",
               "html",
            },
            init_options = {
               embeddedLanguages = { css = true }, -- Важно!
            },
         })
         vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
         vim.keymap.set({ "n" }, "<leader>ca", vim.lsp.buf.code_action, {})
      end,
   },
}
