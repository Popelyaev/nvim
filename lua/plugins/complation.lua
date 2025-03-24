return {
   {
      {
         "L3MON4D3/LuaSnip",
         dependencies = { "rafamadriz/friendly-snippets" }, -- Готовые сниппеты (опционально)
         config = function()
            require("luasnip.loaders.from_vscode").lazy_load({
               paths = { vim.fn.stdpath("config") .. "/snippets" }
            }) -- Подключает сниппеты VS Code
         end
      },
      {
         "hrsh7th/nvim-cmp",
         dependencies = {
            "hrsh7th/cmp-nvim-lsp", -- LSP source
            "hrsh7th/cmp-buffer",   -- Текущий буфер
            "hrsh7th/cmp-path",     -- Пути
            "hrsh7th/cmp-cmdline",  -- Командная строка
            "L3MON4D3/LuaSnip",     -- Snippets
            "saadparwaiz1/cmp_luasnip" -- Интеграция со snippets
         },
         config = function()
            local cmp = require("cmp")

            cmp.setup({
               snippet = {
                  expand = function(args)
                     require("luasnip").lsp_expand(args.body) -- Для поддержки snippets
                  end,
               },
               mapping = cmp.mapping.preset.insert({
                  ["<Tab>"] = cmp.mapping.select_next_item(),     -- Переключение по автодополнению
                  ["<S-Tab>"] = cmp.mapping.select_prev_item(),
                  ["<CR>"] = cmp.mapping.confirm({ select = true }), -- Выбрать вариант
               }),
               sources = cmp.config.sources({
                  { name = "nvim_lsp" }, -- Источник LSP
                  { name = "buffer" }, -- Подсказки из текущего файла
                  { name = "path" },  -- Пути к файлам
                  { name = "luasnip" }, -- Snippets
               }),
            })
         end
      }
   }
}
