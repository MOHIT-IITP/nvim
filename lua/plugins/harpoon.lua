return {
	"ThePrimeagen/harpoon",
	config = function()
		require("harpoon").setup({
			global_settings = {
				save_on_toggle = false,
				save_on_change = true,
				enter_on_sendcmd = false,
				tmux_autoclose_windows = false,
				excluded_filetypes = { "harpoon" },
			},
		})
		local mark = require("harpoon.mark")
		local ui = require("harpoon.ui")

		-- Add current file to Harpoon
		vim.keymap.set("n", "<leader>a", mark.add_file)

		-- Toggle the Harpoon menu
		vim.keymap.set("n", "<leader>h", ui.toggle_quick_menu)

		-- Navigate to the first marked file
		vim.keymap.set("n", "<leader>1", function()
			ui.nav_file(1)
		end)

		-- Navigate to the second marked file
		vim.keymap.set("n", "<leader>2", function()
			ui.nav_file(2)
		end)
	end,
}
