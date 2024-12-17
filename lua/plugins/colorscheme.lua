-- return {
-- 	"ellisonleao/gruvbox.nvim", -- theme
-- 	priority = 1000,
-- 	config = function()
-- 		require("gruvbox").setup({
-- 			contrast = "hard",
-- 			palette_overrides = { dark0_hard = "#0E1018" },
-- 			overrides = {
-- 				NormalFloat = { fg = "#ebdbb2", bg = "#504945" },
-- 				Comment = { fg = "#81878f", italic = true, bold = true },
-- 				Define = { link = "GruvboxPurple" },
-- 				Macro = { link = "GruvboxPurple" },
-- 				["@constant.builtin"] = { link = "GruvboxPurple" },
-- 				["@storageclass.lifetime"] = { link = "GruvboxAqua" },
-- 				["@text.note"] = { link = "TODO" },
-- 				["@namespace.rust"] = { link = "Include" },
-- 				["@punctuation.bracket"] = { link = "GruvboxOrange" },
-- 				texMathDelimZoneLI = { link = "GruvboxOrange" },
-- 				texMathDelimZoneLD = { link = "GruvboxOrange" },
-- 				luaParenError = { link = "luaParen" },
-- 				luaError = { link = "NONE" },
-- 				ContextVt = { fg = "#878788" },
-- 				CopilotSuggestion = { fg = "#878787" },
-- 				CocCodeLens = { fg = "#878787" },
-- 				CocWarningFloat = { fg = "#dfaf87" },
-- 				CocInlayHint = { fg = "#ABB0B6" },
-- 				CocPumShortcut = { fg = "#fe8019" },
-- 				CocPumDetail = { fg = "#fe8019" },
-- 				DiagnosticVirtualTextWarn = { fg = "#dfaf87" },
-- 				-- fold
-- 				Folded = { fg = "#fe8019", bg = "#0E1018", italic = true },
-- 				SignColumn = { bg = "#0E1018" },
-- 				-- new git colors
-- 				DiffAdd = {
-- 					bold = true,
-- 					reverse = false,
-- 					fg = "",
-- 					bg = "#2a4333",
-- 				},
-- 				DiffChange = {
-- 					bold = true,
-- 					reverse = false,
-- 					fg = "",
-- 					bg = "#333841",
-- 				},
-- 				DiffDelete = {
-- 					bold = true,
-- 					reverse = false,
-- 					fg = "#442d30",
-- 					bg = "#442d30",
-- 				},
-- 				DiffText = {
-- 					bold = true,
-- 					reverse = false,
-- 					fg = "",
-- 					bg = "#213352",
-- 				},
-- 				-- statusline
-- 				StatusLine = { bg = "#ffffff", fg = "#0E1018" },
-- 				StatusLineNC = { bg = "#3c3836", fg = "#0E1018" },
-- 				CursorLineNr = { fg = "#fabd2f", bg = "" },
-- 				GruvboxOrangeSign = { fg = "#dfaf87", bg = "" },
-- 				GruvboxAquaSign = { fg = "#8EC07C", bg = "" },
-- 				GruvboxGreenSign = { fg = "#b8bb26", bg = "" },
-- 				GruvboxRedSign = { fg = "#fb4934", bg = "" },
-- 				GruvboxBlueSign = { fg = "#83a598", bg = "" },
-- 				WilderMenu = { fg = "#ebdbb2", bg = "" },
-- 				WilderAccent = { fg = "#f4468f", bg = "" },
-- 				-- coc semantic token
-- 				CocSemStruct = { link = "GruvboxYellow" },
-- 				CocSemKeyword = { fg = "", bg = "#0E1018" },
-- 				CocSemEnumMember = { fg = "", bg = "#0E1018" },
-- 				CocSemTypeParameter = { fg = "", bg = "#0E1018" },
-- 				CocSemComment = { fg = "", bg = "#0E1018" },
-- 				CocSemMacro = { fg = "", bg = "#0E1018" },
-- 				CocSemVariable = { fg = "", bg = "#0E1018" },
-- 				CocSemFunction = { fg = "", bg = "#0E1018" },
-- 				-- neorg
-- 				["@neorg.markup.inline_macro"] = { link = "GruvboxGreen" },
-- 			},
-- 		})
-- 		vim.cmd.colorscheme("gruvbox")
-- 	end,
-- }
--
-- return {
-- 	"catppuccin/nvim", -- theme
-- 	priority = 1000,
-- 	config = function()
-- 		require("catppuccin").setup({
-- 			flavour = "mocha", -- latte, frappe, macchiato, mocha
-- 			background = { -- :h background
-- 				light = "latte",
-- 				dark = "mocha",
-- 			},
-- 			transparent_background = false, -- disables setting the background color.
-- 			show_end_of_buffer = false, -- shows the '~' characters after the end of buffers
-- 			term_colors = false, -- sets terminal colors (e.g. `g:terminal_color_0`)
-- 			dim_inactive = {
-- 				enabled = false, -- dims the background color of inactive window
-- 				shade = "dark",
-- 				percentage = 0.15, -- percentage of the shade to apply to the inactive window
-- 			},
-- 			no_italic = false, -- Force no italic
-- 			no_bold = false, -- Force no bold
-- 			no_underline = false, -- Force no underline
-- 			styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
-- 				comments = { "italic" }, -- Change the style of comments
-- 				conditionals = { "italic" },
-- 				loops = {},
-- 				functions = {},
-- 				keywords = {},
-- 				strings = {},
-- 				variables = {},
-- 				numbers = {},
-- 				booleans = {},
-- 				properties = {},
-- 				types = {},
-- 				operators = {},
-- 				-- miscs = {}, -- Uncomment to turn off hard-coded styles
-- 			},
-- 			color_overrides = {},
-- 			custom_highlights = {},
-- 			default_integrations = true,
-- 			integrations = {
-- 				cmp = true,
-- 				gitsigns = true,
-- 				nvimtree = true,
-- 				treesitter = true,
-- 				notify = false,
-- 				mini = {
-- 					enabled = true,
-- 					indentscope_color = "",
-- 				},
-- 				-- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
-- 			},
-- 		})
-- 		vim.cmd.colorscheme("catppuccin")
-- 	end,
-- }
--
--

return {
	"rose-pine/neovim",
	priority = 1000,
	config = function()
		require("rose-pine").setup({
			variant = "auto", -- auto, main, moon, or dawn
			dark_variant = "main", -- main, moon, or dawn
			dim_inactive_windows = false,
			extend_background_behind_borders = true,

			enable = {
				terminal = true,
				legacy_highlights = true, -- Improve compatibility for previous versions of Neovim
				migrations = true, -- Handle deprecated options automatically
			},

			styles = {
				bold = true,
				italic = true,
				transparency = true,
			},

			groups = {
				border = "muted",
				link = "iris",
				panel = "surface",

				error = "love",
				hint = "iris",
				info = "foam",
				note = "pine",
				todo = "rose",
				warn = "gold",

				git_add = "foam",
				git_change = "rose",
				git_delete = "love",
				git_dirty = "rose",
				git_ignore = "muted",
				git_merge = "iris",
				git_rename = "pine",
				git_stage = "iris",
				git_text = "rose",
				git_untracked = "subtle",

				h1 = "iris",
				h2 = "foam",
				h3 = "rose",
				h4 = "gold",
				h5 = "pine",
				h6 = "foam",
			},

			palette = {
				-- Override the builtin palette per variant
				-- moon = {
				--     base = '#18191a',
				--     overlay = '#363738',
				-- },
			},

			highlight_groups = {
				-- Comment = { fg = "foam" },
				-- VertSplit = { fg = "muted", bg = "muted" },
			},

			before_highlight = function(group, highlight, palette)
				-- Disable all undercurls
				-- if highlight.undercurl then
				--     highlight.undercurl = false
				-- end
				--
				-- Change palette colour
				-- if highlight.fg == palette.pine then
				--     highlight.fg = palette.foam
				-- end
			end,
		})

		vim.cmd("colorscheme rose-pine")
		-- vim.cmd("colorscheme rose-pine-main")
		-- vim.cmd("colorscheme rose-pine-moon")
		-- vim.cmd("colorscheme rose-pine-dawn")
	end,
}
