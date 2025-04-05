return {
   {
      "folke/tokyonight.nvim",
      lazy = false,
      priority = 1000,
      opts = {},
      config = function()
         -- vim.api.nvim_set_hl(0, "@tag", { fg = "#E06C75" })     -- Красные теги (например, div, span)
         -- vim.api.nvim_set_hl(0, "@tag.delimiter", { fg = "#FFFFFF" }) -- Белые < и >
         -- vim.api.nvim_set_hl(0, "@text", { fg = "#FFFFFF" })
         -- vim.api.nvim_set_hl(0, "@text.title", { fg = "#FFFFFF" }) -- Белый заголовок (title, h1, h2 и т.д.)
         -- vim.api.nvim_set_hl(0, "@text.strong", { fg = "#FFFFFF" }) -- Белый жирный текст (<b>, <strong>)
         -- vim.api.nvim_set_hl(0, "@text.emphasis", { fg = "#FFFFFF" }) -- Белый курсив (<i>, <em>)kk
         require("tokyonight").setup({
            -- use the night style
            style = "night",
            -- disable italic for functions
            styles = {
               functions = {},
            },
         })
      end,
   },
   {
      "catppuccin/nvim",
      name = "catppuccin",
      priority = 1000,
   },
}
