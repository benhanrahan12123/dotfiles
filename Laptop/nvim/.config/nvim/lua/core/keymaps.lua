vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.keymap.set({'n', 'v' }, '<Space>', '<Nop>', { silent = true}) -- this removes spacebar's default behaviour when in Normal or Visual mode

local opts = { noremap = true, silent = true } -- noremap stops recursive mappings, silent tells nvim not to show the command in the command line when triggered

-- this is what is meant by noremap, we are safeguarding our keymaps from breaking as we continue to add more, if you map x to y, and y is already mapped to z, it prevents x from turning into z

vim.keymap.set('n', 'x', '"_x', opts) -- this makes 'x' not copy what we deleted into our register, i dont want to copy wht we delete because it overwrites what is already in the register

vim.keymap.set('n', '<C-d>', '<C-d>zz', opts) -- <C-d> scrolls half a page, now it also executes zz too, zz recenters your cursor to the middle of the window
vim.keymap.set('n', '<C-u>', '<C-u>zz', opts) -- this is the same as above but in the opposite direction
vim.keymap.set('n', 'n', 'nzzzv', opts) -- Jump to next search match, center the cursor, and open any folds to reveal the match
vim.keymap.set('n', 'N', 'Nzzzv', opts) -- same as above in opposite direction




-- a window is a viewport into a buffer, splits are just the layout of the windows, tabs are containers for our windows
-- buffers are sort of like files in RAM, imagine neovim is the OS and buffers are files currently loaded into RAM, :ls or :buffers to view them
-- so tab > window > buffer


-- resize any window inside of nvim
vim.keymap.set('n', '<Up>', ':resize -2<CR>', opts)
vim.keymap.set('n', '<Down>', ':resize +2<CR>', opts)
vim.keymap.set('n', '<Left>', ':vertical resize +2<CR>', opts)
vim.keymap.set('n', '<Right>', ':vertical resize -2<CR>', opts)

-- buffer mappings
vim.keymap.set('n', '<Tab>', ':bnext<CR>', opts)
vim.keymap.set('n', '<S-Tab>', ':bprevious<CR>', opts)
vim.keymap.set('n', '<leader>x', ':bdelete!<CR>', opts) -- close buffer
vim.keymap.set('n', '<leader>b', '<cmd> enew <CR>', opts) -- new buffer

-- splitting windows
vim.keymap.set('n', '<leader>v', '<C-w>v', opts) -- split window vertically
vim.keymap.set('n', '<leader>h', '<C-w>s', opts) -- split window horizontally
vim.keymap.set('n', '<leader>se', '<C-w>=', opts) -- make split windows equal width & height
vim.keymap.set('n', '<leader>xs', ':close<CR>', opts) -- close current split window

-- move between each of our splits
vim.keymap.set('n', '<C-k>', ':wincmd k<CR>', opts)
vim.keymap.set('n', '<C-j>', ':wincmd j<CR>', opts)
vim.keymap.set('n', '<C-h>', ':wincmd h<CR>', opts)
vim.keymap.set('n', '<C-l>', ':wincmd l<CR>', opts)

-- tabs
vim.keymap.set('n', '<leader>to', ':tabnew<CR>', opts) -- open new tab
vim.keymap.set('n', '<leader>tx', ':tabclose<CR>', opts) -- close current tab
vim.keymap.set('n', '<leader>tn', ':tabn<CR>', opts) --  go to next tab
vim.keymap.set('n', '<leader>tp', ':tabp<CR>', opts) --  go to previous tab

-- toggle line wrapping
vim.keymap.set('n', '<leader>lw', '<cmd>set wrap!<CR>', opts)

-- stay in indent mode
vim.keymap.set('v', '<', '<gv', opts)
vim.keymap.set('v', '>', '>gv', opts)


-- normally, when pasting in visual mode, Vim replaces the selected text and updates your yank register with the replaces text.
-- the mapping below deletes the selected text into the black hole register so your yank buffer stays intact, then pastes
-- we are not losing our clipboard when pasting over text

-- Keep last yanked when pasting
vim.keymap.set('v', 'p', '"_dP', opts)

-- neovim's built in LSP-diagnostics
-- diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })
vim.keymap.set('n', '<leader>d', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })
