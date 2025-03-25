return {

   "nvimtools/none-ls.nvim",
   config = function()
      local null_ls = require("null-ls")
      null_ls.setup({
         sources = { -- исправлено source → sources
            null_ls.builtins.formatting.stylua,
            null_ls.builtins.formatting.prettier,
         },
      })

      vim.keymap.set("n", "<leader>gf", function()
         vim.lsp.buf.format({ async = true }) -- Добавил async=true для лучшей совместимости
      end, {})
   end,
}
