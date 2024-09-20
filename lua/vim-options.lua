-- indent blankline 
vim.opt.list = false 
vim.opt.listchars:append "space:⋅"
vim.opt.listchars:append("trail: ")

-- lsp config 
require("lspconfig").ts_ls.setup({
	on_attach = function(client, bufnr)
		local opts = { noremap = true, silent = true }
		vim.api.nvim_buf_set_keymap(bufnr, "n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opts) -- Go to definition
		vim.api.nvim_buf_set_keymap(bufnr, "n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", opts) -- References
		vim.api.nvim_buf_set_keymap(bufnr, "n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", opts) -- Hover
	end,
})

vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set relativenumber")
vim.opt.listchars:append("space:·")

vim.opt.linespace = 2
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<Leader>Y", [["+Y]])
vim.keymap.set("n", "<Leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

vim.opt.updatetime = 50
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- navigate left and right with vim mode
-- Normal Mode Navigation
vim.api.nvim_set_keymap("n", "<C-h>", "<C-w>h", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-j>", "<C-w>j", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-k>", "<C-w>k", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-l>", "<C-w>l", { noremap = true, silent = true })

-- Terminal Navigation
vim.api.nvim_set_keymap("t", "<C-h>", "<C-\\><C-n><C-w>h", { noremap = true, silent = true })
vim.api.nvim_set_keymap("t", "<C-j>", "<C-\\><C-n><C-w>j", { noremap = true, silent = true })
vim.api.nvim_set_keymap("t", "<C-k>", "<C-\\><C-n><C-w>k", { noremap = true, silent = true })
vim.api.nvim_set_keymap("t", "<C-l>", "<C-\\><C-n><C-w>l", { noremap = true, silent = true })

-- Copy entire buffer contents to system clipboard
vim.api.nvim_set_keymap("n", "<Leader>y", 'ggVG"+y', { noremap = true })

--Compile and run C++ code
vim.api.nvim_set_keymap(
	"n",
	"<Leader>f",
	':w<CR>:! printf "Mohiittt your output is\n----------------------\n" && g++ -std=c++17 -o test %:r.cpp && ./test && printf "---------------------\n"<CR>',
	{ noremap = true, silent = true }
)

--  Compile and run C++ code with input from file
vim.api.nvim_set_keymap(
	"n",
	"<Leader>r",
	':w<CR>:! printf "24kgold_nnn your output from file is\\n---------------\\n" &&  g++ -std=c++17 -o test %:r.cpp && ./test < input.txt && printf "----------\\n"<CR>',
	{ noremap = true, silent = true }
)

-- Compile and run C++ code with timing
vim.api.nvim_set_keymap(
	"n",
	"<Leader>p",
	':w<CR>:! printf "24kgold_n your time of execution file is\n*************\n" &&  g++ -std=c++17 -o test %:r.cpp && time ./test < input.txt && printf "*************\n"<CR>',
	{ noremap = true }
)
-- Python compile and run the file
vim.api.nvim_set_keymap(
	"n",
	"<leader>q",
	[[:w<CR>:! printf "24kgold_n your output is \n*****************************\n" && python3 %:r.py<CR>]],
	{ noremap = true, silent = true }
)

-- vertical split
-- keybinds
function VerticalSplit()
	vim.cmd("vsplit")
end
vim.api.nvim_set_keymap("n", "<leader>vs", "<cmd>lua VerticalSplit()<CR>", { noremap = true, silent = true })

--horizontal split
--keybinds
function HorizontalSplit()
	vim.cmd("split")
end
vim.api.nvim_set_keymap("n", "<leader>hs", "<cmd>lua HorizontalSplit()<CR>", { noremap = true, silent = true })

-- Detect OS
if not vim.g.os then
	if vim.fn.has("win64") == 1 or vim.fn.has("win32") == 1 or vim.fn.has("win16") == 1 then
		vim.g.os = "Windows"
	else
		vim.g.os = vim.fn.system("uname"):gsub("\n", "")
	end
end

-- Important option that should already be set!
vim.opt.hidden = true

-- Function to wrap terminal commands
function TermWrapper(command)
	-- Set default split style if not already set
	if not vim.g.split_term_style then
		vim.g.split_term_style = "vertical"
	end

	local buffercmd
	if vim.g.split_term_style == "vertical" then
		buffercmd = "vnew"
	elseif vim.g.split_term_style == "horizontal" then
		buffercmd = "new"
	else
		vim.api.nvim_err_writeln(
			"ERROR! g:split_term_style is not a valid value (must be 'horizontal' or 'vertical' but is currently set to '"
				.. vim.g.split_term_style
				.. "')"
		)
		error("ERROR! g:split_term_style is not a valid value (must be 'horizontal' or 'vertical')")
	end

	-- Execute the buffer command
	vim.cmd(buffercmd)

	-- Resize the terminal if a resize command is set
	if vim.g.split_term_resize_cmd then
		vim.cmd(vim.g.split_term_resize_cmd)
	end

	-- Execute the terminal command
	vim.cmd("term " .. command)
	vim.cmd("setlocal nornu nonu")
	vim.cmd("startinsert")

	-- Automatically enter insert mode on buffer enter
	vim.api.nvim_create_autocmd("BufEnter", {
		buffer = 0,
		callback = function()
			vim.cmd("startinsert")
		end,
	})
end

-- Command to compile and run the current C++ file
vim.api.nvim_create_user_command("CompileAndRun", function()
	local command = string.format("g++ -std=c++11 %s && ./a.out", vim.fn.expand("%"))
	TermWrapper(command)
end, { nargs = 0 })

-- Command to compile and run with a specified input file
vim.api.nvim_create_user_command("CompileAndRunWithFile", function(opts)
	local command = string.format("g++ -std=c++11 %s && ./a.out < %s", vim.fn.expand("%"), opts.args)
	TermWrapper(command)
end, { nargs = 1, complete = "file" })

-- Key mappings for C++ file types
vim.api.nvim_create_autocmd("FileType", {
	pattern = "cpp",
	callback = function()
		vim.api.nvim_buf_set_keymap(0, "n", "<leader>fw", ":CompileAndRun<CR>", { noremap = true, silent = true })
	end,
})

-- C++ toolkit commands for macOS
vim.api.nvim_create_augroup("CppToolkit", { clear = true })

if vim.g.os == "Darwin" then
	vim.api.nvim_create_autocmd("FileType", {
		pattern = "cpp",
		callback = function()
			vim.api.nvim_buf_set_keymap(
				0,
				"n",
				"<leader>fn",
				":!g++ -std=c++11 -o %:r % && open -a Terminal './a.out'<CR>",
				{ noremap = true, silent = true }
			)
			vim.api.nvim_buf_set_keymap(
				0,
				"n",
				"<leader>fb",
				":!g++ -std=c++11 % && ./a.out<CR>",
				{ noremap = true, silent = true }
			)
			vim.api.nvim_buf_set_keymap(0, "n", "<leader>fr", ":!./a.out<CR>", { noremap = true, silent = true })
		end,
	})
end

-- Options for terminal split style and resizing
vim.g.split_term_style = "horizontal" -- Choose between 'vertical' and 'horizontal'
vim.g.split_term_resize_cmd = "resize 15" -- Command to resize the terminal window
