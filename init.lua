_G.vim = vim

vim.opt.expandtab = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.opt.tabstop = 3
vim.opt.softtabstop = 3
vim.opt.shiftwidth = 3
vim.smartindent = true
vim.opt.wrap = false
vim.opt.termguicolors = true
vim.g.netrw_banner = 0
-- vim.g.netrw_liststyle = 3
-- vim.g.netrw_browse_split = 0
-- vim.g.netrw_altv = 1
-- vim.g.netrw_winsize = 25
vim.g.mapleader = " "


require("config.lazy")
require("config.keymaps")

vim.cmd("colorscheme catppuccin")

-- Создаем команду :bobob, которая будет выполнять те же самые highlight команды
vim.api.nvim_create_user_command('HighlightNone', function()
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

vim.cmd("HighlightNone")
