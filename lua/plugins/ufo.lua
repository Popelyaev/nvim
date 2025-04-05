return {
	"kevinhwang91/nvim-ufo",
	dependencies = "kevinhwang91/promise-async",
	config = function()
		-- Включаем фолдинг
		vim.o.foldcolumn = "1" -- Показывать колонку фолдов
		vim.o.foldlevel = 99 -- Открывать файлы полностью развернутыми
		vim.o.foldlevelstart = 99 -- То же самое
		vim.o.foldenable = true -- Включить фолдинг

		-- Настройка nvim-ufo
		local ufo = require("ufo")
		ufo.setup({
			provider_selector = function(_, _, _)
				return { "indent" } -- Использует LSP и отступы
			end,
		})

		-- Горячие клавиши
		vim.keymap.set("n", "zR", ufo.openAllFolds) -- Развернуть все
		vim.keymap.set("n", "zM", ufo.closeAllFolds) -- Свернуть все
		vim.keymap.set("n", "z0", function()
			ufo.closeFoldsWith(0)
		end) -- Уровень 1
		vim.keymap.set("n", "z1", function()
			ufo.closeFoldsWith(1)
		end) -- Уровень 1
		vim.keymap.set("n", "z2", function()
			ufo.closeFoldsWith(2)
		end) -- Уровень 2
		vim.keymap.set("n", "z3", function()
			ufo.closeFoldsWith(3)
		end) -- Уровень 3
	end,
}
