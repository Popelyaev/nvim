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
		config = function()
			require("catppuccin").setup({
				flavour = "auto", -- latte, frappe, macchiato, mocha
				background = { -- :h background
					light = "latte",
					dark = "mocha",
				},
				transparent_background = true, -- disables setting the background color.
				show_end_of_buffer = false, -- shows the '~' characters after the end of buffers
				term_colors = true, -- sets terminal colors (e.g. `g:terminal_color_0`)
				dim_inactive = {
					enabled = false, -- dims the background color of inactive window
					shade = "dark",
					percentage = 0.15, -- percentage of the shade to apply to the inactive window
				},
				no_italic = false, -- Force no italic
				no_bold = false, -- Force no bold
				no_underline = false, -- Force no underline
				styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
					comments = { "italic" }, -- Change the style of comments
					conditionals = { "italic" },
					loops = {},
					functions = {},
					keywords = {},
					strings = {},
					variables = {},
					numbers = {},
					booleans = {},
					properties = {},
					types = {},
					operators = {},
					-- miscs = {}, -- Uncomment to turn off hard-coded styles
				},
				color_overrides = {},
				custom_highlights = {},
				default_integrations = true,
				integrations = {
					cmp = true,
					gitsigns = true,
					nvimtree = true,
					treesitter = true,
					notify = false,
					mini = {
						enabled = true,
						indentscope_color = "",
					},
					-- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
				},
			})

			-- setup must be called before loading
			-- vim.cmd.colorscheme "catppuccin"
		end,
	},
}
