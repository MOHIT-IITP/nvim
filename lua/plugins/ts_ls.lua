return {
    -- LSP Configuration
    {
        "neovim/nvim-lspconfig",
        config = function()
            require("lspconfig").ts_ls.setup{}
        end
    },

    -- Autocompletion Plugin
    {
        "hrsh7th/nvim-cmp",
        dependencies = {
            "hrsh7th/cmp-nvim-lsp", -- LSP completion
            "hrsh7th/cmp-buffer",   -- Buffer completion
            "hrsh7th/cmp-path",     -- Path completion
            "hrsh7th/cmp-cmdline",  -- Command-line completion
            "L3MON4D3/LuaSnip"      -- Snippet completion
        },
        config = function()
            local cmp = require('cmp')
            cmp.setup({
                snippet = {
                    expand = function(args)
                        require('luasnip').lsp_expand(args.body)
                    end,
                },
                mapping = cmp.mapping.preset.insert({
                    ['<C-d>'] = cmp.mapping.scroll_docs(-4),
                    ['<C-f>'] = cmp.mapping.scroll_docs(4),
                    ['<C-Space>'] = cmp.mapping.complete(),
                    ['<CR>'] = cmp.mapping.confirm({ select = true }),
                }),
                sources = cmp.config.sources({
                    { name = 'nvim_lsp' },
                    { name = 'buffer' },
                })
            })
        end
    },

    -- Snippet Plugin
    {
        "L3MON4D3/LuaSnip",
        config = function()
            require("luasnip.loaders.from_vscode").lazy_load()
        end
    }
}

