-- return {
--   "catppuccin/nvim",
--   lazy = true,
--   name = "catppuccin",
--   opts = {
--     flavour = "mocha", -- latte, frappe, macchiato, mocha
--     background = { -- :h background
--       light = "latte",
--       dark = "mocha",
--     },
--     transparent_background = false,
--     show_end_of_buffer = false,
--     term_colors = true,
--     dim_inactive = {
--       enabled = false,
--       shade = "dark",
--       percentage = 0.15,
--     },
--     no_italic = false, -- Force no italic
--     no_bold = false, -- Force no bold
--     styles = {
--       comments = { "italic" },
--       conditionals = { "bold" },
--       loops = {},
--       functions = {},
--       keywords = {},
--       strings = {},
--       variables = {},
--       numbers = {},
--       booleans = {},
--       properties = {},
--       types = {},
--       operators = {},
--     },
--     color_overrides = {},
--     custom_highlights = {},
--     integrations = {
--       cmp = true,
--       gitsigns = true,
--       nvimtree = true,
--       telescope = true,
--       notify = false,
--       mini = false,
--       -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
--     },
--   },
-- }
-- Lazy.nvim configuration

return {
    -- Other plugins...

    {
        'arzg/vim-colors-xcode',
        config = function()
            vim.opt.termguicolors = true -- Enable true color support
            vim.cmd('colorscheme xcodelight') -- Use 'xcodelight' for the light theme
        end
    },
}
