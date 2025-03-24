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
vim.g.mapleader = " "

vim.cmd("highlight Normal guibg=NONE ctermbg=NONE")
vim.cmd("highlight NonText guibg=NONE ctermbg=NONE")
vim.cmd("highlight EndOfBuffer guibg=NONE ctermbg=NONE")
vim.cmd("highlight NormalNC guibg=NONE ctermbg=NONE")
vim.cmd("highlight VertSplit guibg=NONE ctermbg=NONE")
vim.cmd("highlight SignColumn guibg=NONE ctermbg=NONE")
vim.cmd("highlight StatusLine guibg=NONE ctermbg=NONE")
vim.cmd("highlight StatusLineNC guibg=NONE ctermbg=NONE")
vim.cmd("highlight TabLine guibg=NONE ctermbg=NONE")
vim.cmd("highlight TabLineFill guibg=NONE ctermbg=NONE")
vim.cmd("highlight TabLineSel guibg=NONE ctermbg=NONE")
vim.cmd("highlight WinSeparator guibg=NONE ctermbg=NONE")
vim.cmd("autocmd ColorScheme * highlight Normal guibg=NONE ctermbg=NONE")

require("config.lazy")
require("config.keymaps")
