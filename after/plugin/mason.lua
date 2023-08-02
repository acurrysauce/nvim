require("mason").setup()

print("setting up LSP servers\n")
-- based on: https://github.com/williamboman/mason-lspconfig.nvim/blob/e86a4c84ff35240639643ffed56ee1c4d55f538e/doc/mason-lspconfig.txt#L263

local handlers  = {
    -- The first entry (without a key) will be the default handler
    -- and will be called for each installed server that doesn't have
    -- a dedicated handler.
    function (server_name) -- default handler (optional)
        require("lspconfig")[server_name].setup {}
    end,
    -- Next, you can provide a dedicated handler for specific servers.
    -- For example, a handler override for the `rust_analyzer`:
    -- ["rust_analyzer"] = function ()
    --     require("rust-tools").setup {}
    -- end
}

-- server names: https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
require("mason-lspconfig").setup {
    ensure_installed = { "lua_ls", "rust_analyzer", "bashls", "eslint", "pyright", "tsserver" },
    handlers = handlers,
}

print("setting up DAP adapters")

-- adapter names: https://github.com/jay-babu/mason-nvim-dap.nvim/blob/main/lua/mason-nvim-dap/mappings/source.lua
require('mason-nvim-dap').setup({
    ensure_installed = {'bash', 'codelldb', 'python'},
    handlers = {
        function(config)
          -- all sources with no handler get passed here
          -- Keep original functionality
          require('mason-nvim-dap').default_setup(config)
        end,
        -- example using custom adapter config:
        -- python = function(config)
        --     config.adapters = {
	    --         type = "executable",
	    --         command = "/usr/bin/python3",
	    --         args = {
		--             "-m",
		--             "debugpy.adapter",
	    --         },
        --     }
        --     require('mason-nvim-dap').default_setup(config) -- don't forget this!
        -- end,
    },
})

-- Example config of DAP without using mason-nvim-dap
-- print('looking for codelldb at: ' .. os.getenv("HOME") .. '/.local/share/nvim/mason/bin/codelldb')
-- local dap = require('dap')
-- 
-- dap.adapters.codelldb = {
--     type = 'server',
--     port = "${port}",
--     executable = {
--         command = os.getenv("HOME") .. '/.local/share/nvim/mason/bin/codelldb', --> path to codelldb executable
--         args = {"--port", "${port}"}
--     }
-- }
-- 
-- dap.configurations.rust = {
--     {
--         name = "Launch file",
--         type = "codelldb",
--         request = "launch",
--         program = function()
--             return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/target/debug/', 'file')
--         end,
--         cwd = '${workspaceFolder}',
--         stopOnEntry = false,
--     }
-- }
