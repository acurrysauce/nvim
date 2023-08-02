require("mason").setup()


print("loading codelldb DAP adapter config")
print(os.getenv("HOME") .. '/.local/share/nvim/mason/bin/codelldb')
local dap = require('dap')
dap.adapters.codelldb = {
    type = 'server',
    port = "${port}",
    executable = {
        command = os.getenv("HOME") .. '/.local/share/nvim/mason/bin/codelldb', --> path to codelldb executable
        args = {"--port", "${port}"}
    }
}

dap.configurations.rust = {
    {
        name = "Launch file",
        type = "codelldb",
        request = "launch",
        program = function()
            return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/target/debug/', 'file')
        end,
        cwd = '${workspaceFolder}',
        stopOnEntry = false,
    }
}
