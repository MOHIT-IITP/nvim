return {
	"lukas-reineke/indent-blankline.nvim",
	indent = {
		char = "│",
		tab_char = "│",
		space_char = "·", -- Character used for spaces
		eol_char = "¬", -- Character used for end of line
	},
	show_trailing_blankline_indent = false, -- Disable trailing blankline indent
	show_first_indent_level = false, -- Disable first indent level
	use_treesitter = true, -- Use treesitter for indentation
	show_current_context = true, -- Show current context
	show_current_context_start = true, -- Show start of current context
}
