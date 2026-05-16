return function(lspconfig, on_attach)
	lspconfig.ts_ls.setup({
		on_attach = on_attach,
		filetype = {
			"typescript",
			"javascript",
			"typescriptreact",
			"javascriptreact",
		},
		settings = {
			typescript = {
				indentStyle = "space",
				indentSizw = 2,
			},
		},
	})
end
