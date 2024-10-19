vim.g.mapleader =" "
vim.keymap.set('i','jk','<Esc>')
vim.keymap.set('v','jk','<Esc>')
vim.keymap.set('n','<leader>s',':wa<CR>')
vim.keymap.set('n','<leader>q',':q<CR>')
vim.keymap.set('n','<leader>F',':%s/')
vim.keymap.set('n','<leader>t',':ToggleTerm<cr>')
vim.keymap.set('t', 'jk', [[<C-\><C-n>]], {})

--setting
vim.cmd("set tabstop=2")
vim.cmd("set expandtab")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set relativenumber")
vim.cmd("set scrolloff=6")
vim.cmd("set clipboard=unnamedplus")

--for switching window
vim.keymap.set('n','<leader>wh','<C-h>')
vim.keymap.set('n','<leader>wl','<C-l>')
vim.keymap.set('n','<leader>wk','<C-k>')
vim.keymap.set('n','<leader>wj','<C-j>')


--For window split
vim.keymap.set('n','<leader>v',':vsplit<CR>')
vim.keymap.set('n','<leader>h',':split<CR>')

require("config.lazy")
