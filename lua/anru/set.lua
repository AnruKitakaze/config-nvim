vim.opt.fileformats = {'unix', 'dos'}
vim.opt.fileformat = 'unix'
-- use system clipboard for copy/pasting
vim.opt.clipboard = "unnamedplus"

vim.opt.guifont = "LiterationMono Nerd Font:h18"
vim.opt.title = true
vim.opt.hlsearch = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.smartindent = true

vim.opt.colorcolumn = '88'

-- Set smart indenting
-- Enable break indent
vim.o.breakindent = true
-- Save undo history
vim.o.undofile = true
-- Case-insensitive searching UNLESS \C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true
-- Decrease update time
vim.o.updatetime = 250
vim.o.timeoutlen = 300
-- Set completeopt to have a better completion experience
vim.o.completeopt = 'menuone,noselect'
-- NOTE: You should make sure your terminal supports this
vim.o.termguicolors = true

vim.wo.number = true
vim.wo.relativenumber = true
-- Keep signcolumn on by default
vim.wo.signcolumn = 'yes'

vim.g.netrw_browse_split = 0
vim.g.netrw_banner = 0
vim.g.netrw_winsize = 25
