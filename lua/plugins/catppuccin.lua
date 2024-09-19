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

-- return {
-- 	-- Other plugins...
--
-- 	{
-- 		"arzg/vim-colors-xcode",
-- 		config = function()
-- 			vim.opt.termguicolors = true -- Enable true color support
-- 			vim.cmd("colorscheme xcodelight") -- Use 'xcodelight' for the light theme
-- 		end,
-- 	},
-- }
-- init.lua

-- Initialize Lazy.nvim
-- return {
-- 	-- Gruvbox Light theme
-- 	{
-- 		"morhetz/gruvbox",
-- 		lazy = false, -- Set to false to load the theme immediately
-- 		config = function()
-- 			-- Set the background to light mode
-- 			vim.o.background = "dark"
-- 			vim.cmd("colorscheme gruvbox")
-- 		end,
-- 	},
-- 	-- Add other plugins here
-- }
--
return {
	"ellisonleao/gruvbox.nvim", -- theme
	priority = 1000,
	config = function()
		require("gruvbox").setup({
			contrast = "hard",
			palette_overrides = { dark0_hard = "#0E1018" },
			overrides = {
				NormalFloat = { fg = "#ebdbb2", bg = "#504945" },
				Comment = { fg = "#81878f", italic = true, bold = true },
				Define = { link = "GruvboxPurple" },
				Macro = { link = "GruvboxPurple" },
				["@constant.builtin"] = { link = "GruvboxPurple" },
				["@storageclass.lifetime"] = { link = "GruvboxAqua" },
				["@text.note"] = { link = "TODO" },
				["@namespace.rust"] = { link = "Include" },
				["@punctuation.bracket"] = { link = "GruvboxOrange" },
				texMathDelimZoneLI = { link = "GruvboxOrange" },
				texMathDelimZoneLD = { link = "GruvboxOrange" },
				luaParenError = { link = "luaParen" },
				luaError = { link = "NONE" },
				ContextVt = { fg = "#878788" },
				CopilotSuggestion = { fg = "#878787" },
				CocCodeLens = { fg = "#878787" },
				CocWarningFloat = { fg = "#dfaf87" },
				CocInlayHint = { fg = "#ABB0B6" },
				CocPumShortcut = { fg = "#fe8019" },
				CocPumDetail = { fg = "#fe8019" },
				DiagnosticVirtualTextWarn = { fg = "#dfaf87" },
				-- fold
				Folded = { fg = "#fe8019", bg = "#0E1018", italic = true },
				SignColumn = { bg = "#fe8019" },
				-- new git colors
				DiffAdd = {
					bold = true,
					reverse = false,
					fg = "",
					bg = "#2a4333",
				},
				DiffChange = {
					bold = true,
					reverse = false,
					fg = "",
					bg = "#333841",
				},
				DiffDelete = {
					bold = true,
					reverse = false,
					fg = "#442d30",
					bg = "#442d30",
				},
				DiffText = {
					bold = true,
					reverse = false,
					fg = "",
					bg = "#213352",
				},
				-- statusline
				StatusLine = { bg = "#ffffff", fg = "#0E1018" },
				StatusLineNC = { bg = "#3c3836", fg = "#0E1018" },
				CursorLineNr = { fg = "#fabd2f", bg = "" },
				GruvboxOrangeSign = { fg = "#dfaf87", bg = "" },
				GruvboxAquaSign = { fg = "#8EC07C", bg = "" },
				GruvboxGreenSign = { fg = "#b8bb26", bg = "" },
				GruvboxRedSign = { fg = "#fb4934", bg = "" },
				GruvboxBlueSign = { fg = "#83a598", bg = "" },
				WilderMenu = { fg = "#ebdbb2", bg = "" },
				WilderAccent = { fg = "#f4468f", bg = "" },
				-- coc semantic token
				CocSemStruct = { link = "GruvboxYellow" },
				CocSemKeyword = { fg = "", bg = "#0E1018" },
				CocSemEnumMember = { fg = "", bg = "#0E1018" },
				CocSemTypeParameter = { fg = "", bg = "#0E1018" },
				CocSemComment = { fg = "", bg = "#0E1018" },
				CocSemMacro = { fg = "", bg = "#0E1018" },
				CocSemVariable = { fg = "", bg = "#0E1018" },
				CocSemFunction = { fg = "", bg = "#0E1018" },
				-- neorg
				["@neorg.markup.inline_macro"] = { link = "GruvboxGreen" },
			},
		})
		vim.cmd.colorscheme("gruvbox")
	end,
}
