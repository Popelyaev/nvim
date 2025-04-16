return {
    "nvimtools/none-ls.nvim",
    config = function()
        local null_ls = require("null-ls")
        null_ls.setup({
            sources = { -- исправлено source → sources
                null_ls.builtins.formatting.stylua,
                null_ls.builtins.formatting.shfmt,
                null_ls.builtins.formatting.prettier.with({
                    extra_args = {
                        "--tab-width",
                        "4", -- Устанавливаем ширину таба в 3 пробела
                        "--use-tabs",
                        "false", -- Используем пробелы вместо табов
                    },
                }),
            },
        })

        vim.keymap.set("n", "<leader>gf", function()
            vim.lsp.buf.format({ async = true }) -- Добавил async=true для лучшей совместимости
        end, {})
    end,
}
