_G.vim = vim

require("config.lazy")
require("config.keymaps")
require("config.options")


vim.cmd("colorscheme onedark")
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

-- vim.cmd("HighlightNone")
