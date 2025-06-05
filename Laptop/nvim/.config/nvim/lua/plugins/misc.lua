-- misc plugins

return {
    { 'folke/which-key.nvim' },
    { 'windwp/nvim-autopairs', event = 'InsertEnter', config = true, opts = {} }, -- automatically closes parentheses, brackets, quotes, etc
    {
        'norcalli/nvim-colorizer.lua',                                          -- this will highlight the colours inside our code, super useful for CSS, hex rgb asl etc
        config = function()
            require('colorizer').setup()
        end,
    },
    { 'ThePrimeagen/vim-be-good', cmd = 'VimBeGood' }, -- only runs when :VimBeGood
}
