return function(lspconfig, on_attach)
	lspconfig.pyright.setup({
		on_attach = on_attach,
		filetypes = { "python" },
		settings = {
			pyright = {
				disableOrganizeImports = false,
				analysis = {
					autoSearchPaths = true,
					diagnosticMode = "workspace",
					useLibraryCodeForTypes = true,
					autoImportCompletions = true,
				},
			},
		},
	})
end
