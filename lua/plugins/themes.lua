return {
   {
      "catppuccin/nvim",
      priority = 1000,
      config = function()
         vim.cmd.colorscheme "catppuccin"
         require("catppuccin").setup({
            options = {
               transparent = true,     -- Включает прозрачность
               terminal_colors = true, -- Использует цвета терминала
            }
         })
      end
   },
   {
      "ellisonleao/gruvbox.nvim",
      priority = 1000,
      config = function()
         require("gruvbox").setup({
            options = {
               transparent = true,     -- Включает прозрачность
               terminal_colors = true, -- Использует цвета терминала
            }
         })
      end
   },
   {
      "folke/tokyonight.nvim",
      lazy = false,
      priority = 1000,
      config = function()
         require("tokyonight").setup({
            options = {
               transparent = true,     -- Включает прозрачность
               terminal_colors = true, -- Использует цвета терминала
            }
         })
      end

   },
   {
      "EdenEast/nightfox.nvim",
      priority = 1000,
      config = function()
         require("nightfox").setup({
            require('onedark').load(),
            options = {
               transparent = true,     -- Включает прозрачность
               terminal_colors = true, -- Использует цвета терминала
            }

         })
      end
   },
   {
      "navarasu/onedark.nvim",
      config = function()
         require("onedark").setup({
            transparent = true,        -- Включает прозрачность
            terminal_colors = true,    -- Использует цвета терминала

         })
      end
   }
}
