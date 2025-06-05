vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.clipboard = 'unnamedplus' -- sync our clipboard between the neovim and the OS
vim.opt.wrap = true
vim.opt.linebreak = true
vim.opt.mouse = 'a' -- just in case i need mouse for some reason
vim.opt.ignorecase = true -- searching is case-insensitive 
vim.opt.smartcase = true -- this overrides ignorecase and enables case sensitivity if there is a single cap typed into search

-- tabbing
vim.opt.autoindent = true -- this will copy the indentation from the current line when starting a new one
vim.opt.shiftwidth = 4 -- no. spaces inserted in each indent
vim.opt.tabstop = 4 -- this is the width of a real tab if we use it, but vim.opt.expandtab disables tab and converts it to spaces, this line is just a fallback measure
vim.opt.expandtab = true -- use spaces instead of tab characters, neovim now inserts spaces instead of literal tab characters like \t when <Tab> is pressed
vim.opt.softtabstop = 4 -- how many spaces a <Tab> or <Backspace> inserts/removes

vim.opt.scrolloff = 4 -- no. lines to appear above and below the cursor
vim.opt.swapfile = false -- NO SWAPFILE
