return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup({
				ui = {
					icons = {
						package_installed = "✓",
						package_pending = "➜",
						package_uninstalled = "✗",
					},
				},
			})
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		-- lazy = false,
		opts = {
			auto_install = true,
		},
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls",
					"ts_ls",
					"emmet_language_server",
					"cssls",
					"html",
					"jsonls",
					"powershell_es",
				},
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require("lspconfig")
			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			lspconfig.lua_ls.setup({
				capabilities = capabilities,
				filetypes = {
					"lua",
				},
			})
			lspconfig.powershell_es.setup({
				capabilities = capabilities,
			})
			lspconfig.ts_ls.setup({
				capabilities = capabilities,
				filetypes = {
					"javascript",
					"typescript",
					"javascriptreact",
					"typescriptreact",
					"css",
					"html",
				},
			})
			lspconfig.emmet_language_server.setup({
				capabilities = capabilities,
				filetypes = { "html", "css", "javascriptreact", "typescriptreact", "vue", "svelte" },
				init_options = {
					--- Настройки для работы в тегах <style>
					embeddedLanguages = {
						css = true,
					},
				},
			})
			lspconfig.cssls.setup({
				capabilities = capabilities,
				filetypes = {
					"css",
					"scss",
					"html",
				},
				init_options = {
					embeddedLanguages = { css = true }, -- Важно!
				},
			})
			lspconfig.html.setup({
				capabilities = capabilities,
			})
			lspconfig.jsonls.setup({
				capabilities = capabilities,
			})
			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set({ "n" }, "<leader>ca", vim.lsp.buf.code_action, {})
		end,
	},
}
