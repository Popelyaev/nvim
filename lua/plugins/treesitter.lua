return {
   "nvim-treesitter/nvim-treesitter",
   run = ":TSUpdate", -- Обновление парсеров
   config = function()
      require("nvim-treesitter.configs").setup({
         ensure_installed = {
            "vim",
            "lua",
            "javascript",
            "html",
            "css", -- Устанавливаем нужные языки
         },
         highlight = {
            enable = true, -- Включаем подсветку синтаксиса
         },
         indent = {
            enable = true, -- Включаем автоотступы
         },
         fold = {
            enable = true, -- Включаем сворачивание
         },
      })
   end,
}
