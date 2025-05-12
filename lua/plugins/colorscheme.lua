-- return {
--   {
--     "catppuccin/nvim",
--     name = "catppuccin",
--     priority = 1000,
--     opts = {
--       flavour = "mocha", -- Can be: latte, frappe, macchiato, mocha
--       background = {
--         light = "latte",
--         dark = "mocha",
--       },
--       transparent_background = true,
--       show_end_of_buffer = false,
--       term_colors = true,
--       dim_inactive = {
--         enabled = false,
--         shade = "dark",
--         percentage = 0.15,
--       },
--       no_italic = false,
--       no_bold = false,
--       no_underline = false,
--       styles = {
--         comments = { "italic" },
--         conditionals = { "italic" },
--         loops = {},
--         functions = {},
--         keywords = {},
--         strings = {},
--         variables = {},
--         numbers = {},
--         booleans = {},
--         properties = {},
--         types = {},
--         operators = {},
--       },
--       color_overrides = {},
--       custom_highlights = {},
--       integrations = {
--         cmp = true,
--         gitsigns = true,
--         nvimtree = true,
--         telescope = true,
--         notify = true,
--         mini = true,
--         noice = true,
--         mason = true,
--         native_lsp = {
--           enabled = true,
--           virtual_text = {
--             errors = { "italic" },
--             hints = { "italic" },
--             warnings = { "italic" },
--             information = { "italic" },
--           },
--           underlines = {
--             errors = { "underline" },
--             hints = { "underline" },
--             warnings = { "underline" },
--             information = { "underline" },
--           },
--         },
--         treesitter = true,
--         indent_blankline = {
--           enabled = true,
--           colored_indent_levels = false,
--         },
--         which_key = true,
--         dap = {
--           enabled = true,
--           enable_ui = true,
--         },
--         aerial = true,
--         dashboard = true,
--         lsp_saga = false,
--         semantic_tokens = true,
--         illuminate = true,
--       },
--     },
--     config = function(_, opts)
--       require("catppuccin").setup(opts)
--       vim.cmd.colorscheme("catppuccin")
--     end,
--   }
-- }



vim.opt.termguicolors = true

return {
  {
    "folke/tokyonight.nvim",
    lazy = false, 
    priority = 1000,
    config = function()
      require("tokyonight").setup({
        style = "night", 
        transparent = false,
        terminal_colors = true, 
        styles = {
          comments = { italic = true },
          keywords = { italic = true },
          functions = {},
          variables = {},
        },
        sidebars = { "qf", "help", "neo-tree", "terminal" }, 
        dim_inactive = true, 
        lualine_bold = true,
      })
      vim.cmd.colorscheme("tokyonight")
    end,
  },

  -- Neo-tree plugin
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
    },
    opts = {
      -- Example: use_git_status_colors = false,
      -- You can add custom Neo-tree config here if needed
    },
    lazy = false, 
  },
}

