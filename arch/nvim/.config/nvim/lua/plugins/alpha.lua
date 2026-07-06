-- ================================================================================================
-- TITLE : alpha-nvim
-- ABOUT : A fast and fully programmable greeter for Neovim.
-- LINKS :
--   > github : https://github.com/goolord/alpha-nvim
-- ================================================================================================

return {
	"goolord/alpha-nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		local alpha = require("alpha")
		local dashboard = require("alpha.themes.dashboard")

		dashboard.section.header.val = {
			"                                                     ",
			"  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗",
			"  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║",
			"  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║",
			"  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║",
			"  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║",
			"  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝",
			"                                                     ",
		}

		dashboard.section.buttons.val = {
			dashboard.button("f", "  Find File",       "<Cmd>lua require('fzf-lua').files()<CR>"),
			dashboard.button("g", "  Live Grep",       "<Cmd>lua require('fzf-lua').live_grep()<CR>"),
			dashboard.button("r", "  Recent Files",    "<Cmd>lua require('fzf-lua').oldfiles()<CR>"),
			dashboard.button("e", "  New File",        "<Cmd>enew<CR>"),
			dashboard.button("c", "  Config",          "<Cmd>e ~/.config/nvim/init.lua<CR>"),
			dashboard.button("q", "  Quit",            "<Cmd>qa<CR>"),
		}

		alpha.setup(dashboard.config)
	end,
}
