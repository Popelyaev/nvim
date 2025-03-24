return {
   "nvimtools/none-ls.nvim",
   config = function()
      local null_ls = require("null-ls")
      null_ls.setup({
         sources = { -- исправлено source → sources
            null_ls.builtins.formatting.stylua,
            null_ls.builtins.formatting.prettier,
            -- null_ls.builtins.diagnostics.stylelint, -- Линтер для CSS
            -- null_ls.builtins.diagnostics.htmlhint, -- Линтер для HTML
            -- null_ls.builtins.formatting.eslint,
         }
      })

      vim.keymap.set('n', '<leader>gf', function()
         vim.lsp.buf.format({ async = true }) -- Добавил async=true для лучшей совместимости
      end, {})
   end
}
