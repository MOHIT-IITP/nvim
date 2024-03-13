vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set relativenumber")

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<leader>Y", [["+Y]])
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

vim.opt.updatetime = 50
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- navigate left and right with vim mode 
-- Normal Mode Navigation 
vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>j', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', { noremap = true, silent = true })

-- Terminal Navigation
vim.api.nvim_set_keymap('t', '<C-h>', '<C-\\><C-n><C-w>h', { noremap = true, silent = true })
vim.api.nvim_set_keymap('t', '<C-j>', '<C-\\><C-n><C-w>j', { noremap = true, silent = true })
vim.api.nvim_set_keymap('t', '<C-k>', '<C-\\><C-n><C-w>k', { noremap = true, silent = true })
vim.api.nvim_set_keymap('t', '<C-l>', '<C-\\><C-n><C-w>l', { noremap = true, silent = true })




-- Copy entire buffer contents to system clipboard
vim.api.nvim_set_keymap("n", "<Leader>c", 'ggVG"+y', { noremap = true })

-- Compile and run C++ code
vim.api.nvim_set_keymap(
  "n",
  "<Leader>r",
  ':w<CR>:! printf "Mohiittt your output is\n----------------------\n" && g++ -std=c++17 -o test %:r.cpp && ./test && printf "---------------------\n"<CR>',
  { noremap = true }
)

-- Compile and run C++ code with input from file
vim.api.nvim_set_keymap(
  "n",
  "<Leader>f",
  ':w<CR>:! printf "Mohiiiitttttt your output from file is\\n---------------\\n" &&  g++ -std=c++17 -o test %:r.cpp && ./test < input.txt && printf "----------\\n"<CR>',
  { noremap = true }
)
-- Compile and run C++ code with timing
vim.api.nvim_set_keymap(
  "n",
  "<Leader>t",
  ':w<CR>:! printf "Mohitttt your time of execution file is\n*************\n" &&  g++ -std=c++17 -o test %:r.cpp && time ./test < input.txt && printf "*************\n"<CR>',
  { noremap = true }
)
-- Python compile and run the file
vim.api.nvim_set_keymap('n', '<leader>q', [[:w<CR>:! printf "Mohitttt your output is \n*****************************\n" && python3 %:r.py<CR>]], { noremap = true, silent = true })





-- vertical split
-- keybinds
function VerticalSplit()
    vim.cmd('vsplit')
end
vim.api.nvim_set_keymap('n', '<leader>|', '<cmd>lua VerticalSplit()<CR>', { noremap = true, silent = true })

--horizontal split
--keybinds
function HorizontalSplit()
    vim.cmd('split')
end
vim.api.nvim_set_keymap('n', '<leader>-', '<cmd>lua HorizontalSplit()<CR>', { noremap = true, silent = true })

