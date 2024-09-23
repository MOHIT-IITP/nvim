-- return {
-- 	"mfussenegger/nvim-lint",
-- 	event = { "BufReadPre", "BufNewFile" },
-- 	config = function()
-- 		local lint = require("lint")
--
-- 		lint.linters_by_ft = {
-- 			javascript = { "eslint_d" },
-- 			typescript = { "eslint_d" },
-- 			javascriptreact = { "eslint_d" },
-- 			typescriptreact = { "eslint_d" },
-- 			svelte = { "eslint_d" },
-- 			python = { "pylint" },
-- 		}
--
-- 		local lint_augroup = vim.api.nvim_create_augroup("lint", { clear = true })
--
-- 		vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
-- 			group = lint_augroup,
-- 			callback = function()
-- 				lint.try_lint()
-- 			end,
-- 		})
--
-- 		vim.keymap.set("n", "<leader>l", function()
-- 			lint.try_lint()
-- 		end, { desc = "Trigger linting for current file" })
-- 	end,
-- }
--
--

return {
	"mfussenegger/nvim-lint",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local lint = require("lint")

		-- Set up linters for different file types
		lint.linters_by_ft = {
			javascript = { "eslint_d" },
			typescript = { "eslint_d" },
			javascriptreact = { "eslint_d" },
			typescriptreact = { "eslint_d" },
			svelte = { "eslint_d" },
			python = { "pylint" },
		}

		local lint_augroup = vim.api.nvim_create_augroup("lint", { clear = true })

		-- Function to toggle linting
		local lint_enabled = true
		local function toggle_linting()
			lint_enabled = not lint_enabled
			if lint_enabled then
				vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
					group = lint_augroup,
					callback = function()
						lint.try_lint()
					end,
				})
				print("Linting enabled")
			else
				vim.api.nvim_del_autocmd(lint_augroup)
				print("Linting disabled")
			end
		end

		vim.api.nvim_create_user_command("ToggleLint", toggle_linting, {})

		vim.keymap.set("n", "<leader>l", function()
			lint.try_lint()
		end, { desc = "Trigger linting for current file" })

		vim.keymap.set("n", "<leader>tl", toggle_linting, { desc = "Toggle linting on/off" })
	end,
}
