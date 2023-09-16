-- setting space as the leader key
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- common vimscript configs (except they are in lua kekw)
vim.opt.backspace = '2'
vim.opt.showcmd = true
vim.opt.laststatus = 2
vim.opt.autowrite = true
vim.opt.cursorline = true
vim.opt.autoread = true
vim.opt.smartindent = true
vim.opt.autoindent = true

-- using space for tabs and other stuff
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.relativenumber = true
vim.o.termguicolors = true
vim.o.breakindent = true

-- setting up leader + h to clear highlight/searching
vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')

-- setting up leader + w for saving and leader + q for quitting
vim.api.nvim_set_keymap('n', '<leader>w', ':w<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>q', ':q<CR>', { noremap = true })

-- setting up leader + v for vertical splitting and leader + vh for horizontal splitting
vim.api.nvim_set_keymap('n', '<leader>v', ':vsplit<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>vh', ':split<CR>', { noremap = true })

-- map leader + s + Arrow keys for splitting
vim.api.nvim_set_keymap('n', '<Leader>s<Left>',  ':vertical wincmd h<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>s<Right>', ':vertical wincmd l<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>s<Up>',    ':wincmd k<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>s<Down>',  ':wincmd j<CR>', { noremap = true, silent = true })

