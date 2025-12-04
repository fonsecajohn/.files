return {
    "neovim/nvim-lspconfig",
    dependencies = {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
    },
    config = function()
        require("mason").setup({
            ui = {
                border = "double",
            }
        })
        require("mason-lspconfig").setup({
            ensure_installed = { "lua_ls", },
            handlers = {
                function(server_name)
                    vim.lsp.enable(server_name)
                end,

                vim.lsp.config("lua_ls", {
                    settings = {
                        Lua = {
                            diagnostics = {
                                globals = { "vim" },
                            },
                        },
                    },
                })
            },
        })
        vim.diagnostic.config({
            virtual_text = true,
            underline = true,
            update_in_insert = false,
            severity_sort = true,
            signs = {
                text = {
                    [vim.diagnostic.severity.ERROR] = "",
                    [vim.diagnostic.severity.WARN] = "",
                    [vim.diagnostic.severity.HINT] = "",
                    [vim.diagnostic.severity.INFO] = "",
                },
            },
            float = {
                border = "rounded"
            },
        })
    end
}
