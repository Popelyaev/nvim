_G.vim = vim

require("config.keymaps")
require("config.options")
require("config.lazy")

vim.cmd("colorscheme onedark")
-- vim.cmd("colorscheme catppuccin")
vim.api.nvim_create_user_command("HighlightNone", function()
    vim.cmd([[
    highlight Normal guibg=NONE ctermbg=NONE
    highlight NonText guibg=NONE ctermbg=NONE
    highlight EndOfBuffer guibg=NONE ctermbg=NONE
    highlight NormalNC guibg=NONE ctermbg=NONE
    highlight VertSplit guibg=NONE ctermbg=NONE
    highlight SignColumn guibg=NONE ctermbg=NONE
    highlight StatusLine guibg=NONE ctermbg=NONE
    highlight StatusLineNC guibg=NONE ctermbg=NONE
    highlight TabLine guibg=NONE ctermbg=NONE
    highlight TabLineFill guibg=NONE ctermbg=NONE
    highlight TabLineSel guibg=NONE ctermbg=NONE
    highlight WinSeparator guibg=NONE ctermbg=NONE
    autocmd ColorScheme * highlight Normal guibg=NONE ctermbg=NONE
    highlight NeoTreeNormal guibg=NONE ctermbg=NONE
    highlight NeoTreeNormalNC guibg=NONE ctermbg=NONE
  ]])
end, {})

-- Глобальная переменная для отслеживания состояния
local is_transparent = true

-- Функция переключения
function ToggleTransparent()
    is_transparent = not is_transparent
    require("onedark").setup({
        style = "dark",
        transparent = is_transparent,
    })
    require("onedark").load()
end

-- Горячая клавиша (например, <leader>tt)
vim.keymap.set("n", "<leader>u", ToggleTransparent, { desc = "Toggle transparency" })

-- vim.cmd("HighlightNone")
