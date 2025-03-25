return {
	"goolord/alpha-nvim",
	dependencies = {
		"echasnovski/mini.icons",
		"nvim-lua/plenary.nvim",
	},
	config = function()
		local alpha = require("alpha")
		local dashboard = require("alpha.themes.dashboard")

		-- Set header
		dashboard.section.header.val = {
			"                                                                         ",
			" ██████╗  ██████╗ ██████╗ ███████╗██╗  ██╗   ██╗ █████╗ ███████╗██╗   ██╗",
			" ██╔══██╗██╔═══██╗██╔══██╗██╔════╝██║  ╚██╗ ██╔╝██╔══██╗██╔════╝██║   ██║",
			" ██████╔╝██║   ██║██████╔╝█████╗  ██║   ╚████╔╝ ███████║█████╗  ██║   ██║",
			" ██╔═══╝ ██║   ██║██╔═══╝ ██╔══╝  ██║    ╚██╔╝  ██╔══██║██╔══╝  ╚██╗ ██╔╝",
			" ██║     ╚██████╔╝██║     ███████╗███████╗██║   ██║  ██║███████╗ ╚████╔╝ ",
			" ╚═╝      ╚═════╝ ╚═╝     ╚══════╝╚══════╝╚═╝   ╚═╝  ╚═╝╚══════╝  ╚═══╝  ",
			"                                                                         ",
		}

		-- Расположение элементов
		dashboard.config.layout = {
			{ type = "padding", val = 10 }, -- Отступ сверху
			dashboard.section.header, -- Заголовок
			{ type = "padding", val = 2 },
			dashboard.section.buttons, -- Кнопки
			{ type = "padding", val = 2 },
			dashboard.section.footer, -- Подвал
		}

		-- Set menu
		dashboard.section.buttons.val = {
			dashboard.button("n", " New file", ":ene <BAR> startinsert <CR>"),
			dashboard.button("e", "  Open tree", ":Neotree toggle <CR>"),
			--    dashboard.button("f", "  > Find file", ":cd $HOME/Workspace | Telescope find_files<CR>"),
			dashboard.button("r", "  Recent", ":Telescope oldfiles <CR>"),
			dashboard.button("l", "  Lazy", ":Lazy <CR>"),
			dashboard.button("q", "󰠚 Quit NVIM", ":qa<CR>"),
		}
		--

		-- Send config to alpha
		alpha.setup(dashboard.opts)
	end,
}
