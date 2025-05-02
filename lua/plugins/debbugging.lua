return {
    "mfussenegger/nvim-dap",
    dependencies = {
        "rcarriga/nvim-dap-ui",
        "nvim-neotest/nvim-nio",
    },
    config = function()
        local dap = require("dap")
        local dapui = require("dapui")

        -- JS/TS адаптер
        dap.adapters["pwa-node"] = {
            type = "server",
            host = "localhost",
            port = 8123,
            executable = {
                command = "node",
                args = {
                    vim.fn.stdpath("data") .. "/mason/packages/js-debug-adapter/js-debug/src/dapDebugServer.js",
                    "8123",
                },
            },
        }

        -- Конфигурации для JS и TS
        for _, language in ipairs({ "javascript", "typescript" }) do
            dap.configurations[language] = {
                {
                    type = "pwa-node",
                    request = "launch",
                    name = "Launch file",
                    program = "${file}",
                    cwd = "${workspaceFolder}",
                },
                {
                    type = "pwa-node",
                    request = "attach",
                    name = "Attach",
                    processId = require("dap.utils").pick_process,
                    cwd = "${workspaceFolder}",
                },
            }
        end

        -- Установка адаптера Python через Mason
        local mason_path = vim.fn.stdpath("data") .. "/mason/packages/debugpy/venv/bin/python"

        dap.adapters.python = {
            type = "executable",
            command = mason_path,
            args = { "-m", "debugpy.adapter" },
        }

        dap.configurations.python = {
            {
                type = "python",
                request = "launch",
                name = "Launch file",
                program = "${file}", -- текущий файл
                pythonPath = function()
                    return mason_path
                end,
            },
        }

        -- Инициализация UI
        dapui.setup()

        dap.listeners.before.attach.dapui_config = function()
            dapui.open()
        end
        dap.listeners.before.launch.dapui_config = function()
            dapui.open()
        end
        dap.listeners.before.event_terminated.dapui_config = function()
            dapui.close()
        end
        dap.listeners.before.event_exited.dapui_config = function()
            dapui.close()
        end

        vim.keymap.set("n", "<Leader>dt", function()
            dap.toggle_breakpoint()
        end)
        vim.keymap.set("n", "<Leader>dc", function()
            dap.continue()
        end)
    end,
}
