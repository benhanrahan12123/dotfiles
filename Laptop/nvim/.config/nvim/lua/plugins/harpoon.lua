return {
  'ThePrimeagen/harpoon',  -- install the plugin from GitHub
  config = function()
    local mark = require 'harpoon.mark'
    local ui = require 'harpoon.ui'

    vim.keymap.set('n', '<leader>ha', mark.add_file, { desc = 'Harpoon Add File' })
    vim.keymap.set('n', '<leader>hh', ui.toggle_quick_menu, { desc = 'Harpoon Menu' })

    vim.keymap.set('n', '<leader>h1', function() ui.nav_file(1) end, { desc = 'Harpoon to File 1' })
    vim.keymap.set('n', '<leader>h2', function() ui.nav_file(2) end, { desc = 'Harpoon to File 2' })
    vim.keymap.set('n', '<leader>h3', function() ui.nav_file(3) end, { desc = 'Harpoon to File 3' })
    vim.keymap.set('n', '<leader>h4', function() ui.nav_file(4) end, { desc = 'Harpoon to File 4' })
  end,
}

