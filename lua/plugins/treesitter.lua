return {
   -- "nvim-treesitter/nvim-treesitter",
   -- build = ":TSUpdate",
   -- config = function()
   --    local configs = require("nvim-treesitter.configs")
   --    configs.setup({
   --       ensure_installed = { "lua", "javascript", "html", "css" },
   --       highlight = {
   --          enable = true,         -- включение подсветки синтаксиса
   --       },
   --       fold = {
   --          enable = true, -- включение сворачивания
   --          disable = {}, -- отключить сворачивание для конкретных языков (если нужно)
   --       },
   --       sync_install = false,
   --       indent = { enable = true },
   --    })
   -- end
     {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate",  -- Обновление парсеров
    config = function()
      require'nvim-treesitter.configs'.setup {
        ensure_installed = {
          "html", "css", "javascript", "html", "css"  -- Устанавливаем нужные языки
        },
        highlight = {
          enable = true,  -- Включаем подсветку синтаксиса
        },
        indent = {
          enable = true,  -- Включаем автоотступы
        },
        fold = {
          enable = true,  -- Включаем сворачивание
        },
      }
    end
  },
}
