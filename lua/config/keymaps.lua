-- neo-tree --
vim.keymap.set('n', '<leader>e', ':Neotree toggle <CR>', {})
vim.keymap.set('n', '<leader>a', ':Alpha <CR>', {})

-- main --
vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>j', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', { noremap = true, silent = true })

vim.keymap.set("n", "<leader>tw", ":set wrap! linebreak!<CR>", { noremap = true, silent = true })

local auto_save = false

function ToggleAutoSave()
    if auto_save then
        vim.api.nvim_del_augroup_by_name("AutoSaveGroup")
        auto_save = false
        print("🔴 Автосохранение выключено")
    else
        vim.api.nvim_create_augroup("AutoSaveGroup", { clear = true })
        vim.api.nvim_create_autocmd({"InsertLeave", "TextChanged"}, {
            group = "AutoSaveGroup",
            pattern = "*",
            command = "silent! write"
        })
        auto_save = true
        print("🟢 Автосохранение включено")
    end
end

vim.keymap.set("n", "<leader>as", ToggleAutoSave, { noremap = true, silent = true })
vim.keymap.set("n", "<Esc>", ":nohlsearch<CR>", { noremap = true, silent = true })
