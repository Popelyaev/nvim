return {
    "echasnovski/mini.surround",
    version = "*",
    config = function()
        require("mini.surround").setup({
            mappings = {
                add = "sa", -- Добавить окружение: sa<окружение>
                delete = "sd", -- Удалить: sd<окружение>
                find = "sf", -- Найти справа
                find_left = "sF", -- Найти слева
                highlight = "sh", -- Подсветка
                replace = "sr", -- Заменить окружение
                update_n_lines = "sn", -- Обновить количество строк
                suffix_last = "l", -- К примеру: sal — последнее
                suffix_next = "n", -- san — следующее
            },
        })
    end,
}
