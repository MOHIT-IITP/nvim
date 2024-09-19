return {
    -- null-ls for formatters and linters
    {
        "jose-elias-alvarez/null-ls.nvim",
        config = function()
            local null_ls = require("null-ls")

            null_ls.setup({
                sources = {
                    -- Prettier for JavaScript formatting
                    null_ls.builtins.formatting.prettier,
                    -- ESLint for formatting (optional)
                    null_ls.builtins.formatting.eslint,
                },
                on_attach = function(client, bufnr)
                    -- Check for document formatting capability
                    if client.server_capabilities.documentFormattingProvider then
                        vim.api.nvim_command([[augroup LspFormatting]])
                        vim.api.nvim_command([[autocmd! * <buffer>]])
                        vim.api.nvim_command([[autocmd BufWritePre <buffer> lua vim.lsp.buf.format({async = true})]])
                        vim.api.nvim_command([[augroup END]])
                    end
                end,
            })
        end,
    },
}

