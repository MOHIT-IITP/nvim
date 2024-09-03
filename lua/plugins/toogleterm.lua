return {
    {
        "akinsho/toggleterm.nvim",
        config = function()
            require("toggleterm").setup{
                size = 20, -- Default size of the terminal
                open_mapping = [[<leader>t]], -- Mapping to open the terminal
                hide_numbers = true, -- Hide numbers in the terminal
                shade_filetypes = {},
                shade_terminals = true,
                start_in_insert = true, -- Start in insert mode
                insert_mappings = true, -- Enable insert mode mappings
                terminal_mappings = true, -- Enable terminal mappings
                persist_size = true,
                direction = 'float', -- Default direction can be 'horizontal', 'vertical', or 'float'
            }

            -- Terminal mappings for different modes
            local Terminal = require('toggleterm.terminal').Terminal

            -- Create terminal instances for different modes
            local float_terminal = Terminal:new({ direction = 'float' })
            local vertical_terminal = Terminal:new({ direction = 'vertical' })
            local horizontal_terminal = Terminal:new({ direction = 'horizontal' })

            -- Key mappings for opening terminals
            vim.api.nvim_set_keymap('n', '<leader>tf', '<cmd>lua float_terminal:toggle()<CR>', { noremap = true, silent = true })
            vim.api.nvim_set_keymap('n', '<leader>tv', '<cmd>lua vertical_terminal:toggle()<CR>', { noremap = true, silent = true })
            vim.api.nvim_set_keymap('n', '<leader>th', '<cmd>lua horizontal_terminal:toggle()<CR>', { noremap = true, silent = true })
        end
    },
}
