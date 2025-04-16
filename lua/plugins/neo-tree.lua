return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons",
        "MunifTanjim/nui.nvim",
    },
    lazy = false,
    config = function()
        require("neo-tree").setup({
            window = {
                mappings = {
                    ["l"] = "open",       -- Открытие файла или папки
                    ["h"] = "close_node", -- Закрытие папки
                }
            },
            filesystem = {
                follow_current_file = {
                    enabled = true,
                },
                use_libuv_file_watcher = true, -- вот эта строка включает автообновление
            },
        })
        vim.cmd([[
  "highlight Normal guibg=NONE ctermbg=NONE
  "highlight NormalNC guibg=NONE ctermbg=NONE
  "highlight NeoTreeNormal guibg=NONE ctermbg=NONE
  "highlight NeoTreeNormalNC guibg=NONE ctermbg=NONE
]])
    end
}
