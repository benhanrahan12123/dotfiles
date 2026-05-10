-- ================================================================================================
-- TITLE : nvim-treesitter
-- ABOUT : Treesitter configurations and abstraction layer for Neovim.
-- NOTES : this has been updated for the latest treesitter api using branch "main"
-- LINKS :
--   > github : https://github.com/nvim-treesitter/nvim-treesitter
-- ================================================================================================

return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	event = { "BufReadPost", "BufNewFile" },
	lazy = false,
	config = function()
		require("nvim-treesitter").setup({
			ensure_installed = {
				"bash",
				"c",
				"cpp",
				"css",
				"dockerfile",
				"go",
				"html",
				"javascript",
				"json",
				"lua",
				"markdown",
				"markdown_inline",
				"python",
				"rust",
				"svelte",
				"solidity",
				"typescript",
				"vue",
				"yaml",
			},
		})

		local group = vim.api.nvim_create_augroup("TreeSitterConfig", { clear = true })
		vim.api.nvim_create_autocmd("FileType", {
			group = group,
			callback = function(args)
				local lang = vim.treesitter.language.get_lang(args.match)
				if lang then
					pcall(vim.treesitter.start, args.buf, lang)
				end
			end,
		})
	end,
}
