-- return {
--   "catppuccin/nvim",
--   lazy = true,
--   name = "catppuccin",
--   opts = {
--     flavour = "latte", -- latte, frappe, macchiato, mocha
--     background = { -- :h background
--       light = "latte",
--       dark = "mocha",
--     },
--     transparent_background = false,
--     show_end_of_buffer = false,
--     term_colors = false,
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
return {
    { "ellisonleao/gruvbox.nvim", priority = 1000, config = function()
        require("gruvbox").setup({
            undercurl = true,
            underline = true,
            bold = true,
            italic = {
                strings = true,
                comments = true,
                operators = false,
                folds = true,
            },
            strikethrough = true,
            invert_selection = false,
            invert_signs = false,
            invert_tabline = false,
            invert_intend_guides = false,
            contrast = "", -- can be "hard", "soft" or empty string
            palette_overrides = {},
            overrides = {},
            dim_inactive = false,
            transparent_mode = false,
            })

  end },
}
