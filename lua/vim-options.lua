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



-- Copy entire buffer contents to system clipboard
vim.api.nvim_set_keymap("n", "<Leader>c", 'ggVG"+y', { noremap = true })

-- Compile and run C++ code
vim.api.nvim_set_keymap(
  "n",
  "<Leader>r",
  ':w<CR>:! printf "Mohiittt your output is\n----------------------\n" && g++ -std=c++1z -o test %:r.cpp && ./test && printf "---------------------\n"<CR>',
  { noremap = true }
)

-- Compile and run C++ code with input from file
vim.api.nvim_set_keymap(
  "n",
  "<Leader>f",
  ':w<CR>:! printf "Mohiiiitttttt your output from file is\\n---------------\\n" &&  g++ -std=c++1z -o test %:r.cpp && ./test < input.txt && printf "----------\\n"<CR>',
  { noremap = true }
)
-- Compile and run C++ code with timing
vim.api.nvim_set_keymap(
  "n",
  "<Leader>t",
  ':w<CR>:! printf "Mohitttt your time of execution file is\n*************\n" &&  g++ -std=c++1z -o test %:r.cpp && time ./test < input.txt && printf "*************\n"<CR>',
  { noremap = true }
)
-- Python compile and run the file
vim.api.nvim_set_keymap('n', '<leader>q', [[:w<CR>:! printf "Mohitttt your output is \n*****************************\n" && python3 %:r.py<CR>]], { noremap = true, silent = true })
