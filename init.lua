vim.g.mapleader = ' '
vim.keymap.set('i','jk','<Esc>',{})
vim.keymap.set('n','<leader>s',':wa <CR>',{})
vim.keymap.set('v','<Tab>','>gv',{})
vim.keymap.set('v','<S-Tab>','<gv',{})
vim.keymap.set('n','<leader>q',':q<CR>',{})

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)
require("vim-setting")
require("lazy").setup("plugins")



