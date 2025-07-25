return {
    {
        "williamboman/mason.nvim",
        cmd = "Mason",
        build = ":MasonUpdate",
        opts = {
            ui = {
                icons = {
                    package_installed = "✓",
                    package_pending = "➜",
                    package_uninstalled = "✗"
                }
            }
        }
    },
    {
        "williamboman/mason-lspconfig.nvim",
        dependencies = {
            "neovim/nvim-lspconfig",
            "hrsh7th/cmp-nvim-lsp"
        },
        config = function()
            -- Configure capabilities
            local capabilities = require('cmp_nvim_lsp').default_capabilities()

            -- Configure servers
            require('mason-lspconfig').setup({
                ensure_installed = {
                    'lua_ls',       -- Lua
                    'pyright',      -- Python
                    'rust_analyzer',-- Rust
                    'ts_ls',
                    'clangd',       -- C/C++
                    'bashls',       -- Bash
                    'jsonls',       -- JSON
                    'yamlls',       -- YAML
                    'tailwindcss'   -- ✅ Tailwind CSS added
                },
                handlers = {
                    -- Default handler
                    function(server_name)
                        require('lspconfig')[server_name].setup({
                            capabilities = capabilities
                        })
                    end,

                    -- Lua-specific config
                    ['lua_ls'] = function()
                        require('lspconfig').lua_ls.setup({
                            settings = {
                                Lua = {
                                    diagnostics = { globals = { 'vim' } },
                                    workspace = { checkThirdParty = false },
                                    telemetry = { enable = false }
                                }
                            }
                        })
                    end,

                    -- Python-specific config
                    ['pyright'] = function()
                        require('lspconfig').pyright.setup({
                            settings = {
                                python = {
                                    analysis = {
                                        typeCheckingMode = "basic",
                                        autoSearchPaths = true,
                                        useLibraryCodeForTypes = true
                                    }
                                }
                            }
                        })
                    end,

                    -- ✅ Tailwind CSS-specific config
                    ['tailwindcss'] = function()
                        require('lspconfig').tailwindcss.setup({
                            capabilities = capabilities,
                            filetypes = {
                                "html", "css", "scss", "javascript", "javascriptreact",
                                "typescript", "typescriptreact", "vue", "svelte", "astro"
                            },
                            init_options = {
                                userLanguages = {
                                    eelixir = "html", -- for Phoenix
                                    heex = "html"
                                }
                            }
                        })
                    end
                }
            })

            -- LSP keymaps
            vim.api.nvim_create_autocmd('LspAttach', {
                group = vim.api.nvim_create_augroup('UserLspConfig', {}),
                callback = function(ev)
                    local opts = { buffer = ev.buf, silent = true }

                    -- Navigation
                    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
                    vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
                    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
                    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
                    vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)

                    -- Code actions
                    vim.keymap.set({'n', 'v'}, '<leader>ca', vim.lsp.buf.code_action, opts)
                    vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts)

                    -- Diagnostics
                    vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
                    vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)
                    vim.keymap.set('n', '<leader>d', vim.diagnostic.open_float, opts)
                end
            })

            -- Diagnostic configuration
            vim.diagnostic.config({
                virtual_text = false,
                float = { border = 'rounded' },
                signs = true,
                update_in_insert = false
            })

            -- Custom diagnostic signs
            local signs = { Error = " ", Warn = " ", Hint = "󰌵 ", Info = " " }
            for type, icon in pairs(signs) do
                local hl = "DiagnosticSign" .. type
                vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
            end
        end
    }
}

