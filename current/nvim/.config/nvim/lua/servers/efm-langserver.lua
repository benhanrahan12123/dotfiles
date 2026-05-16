return function(lspconfig, on_attach)
	local luacheck = require("efmls-configs.linters.luacheck")
	local stylua = require("efmls-configs.formatters.stylua")

	local flake8 = require("efmls-configs.linters.flake8")
	local black = require("efmls-configs.formatters.black")

	local eslint_d = require("efmls-configs.linters.eslint_d")
	local prettier = require("efmls-configs.formatters.prettier")

	lspconfig.efm.setup({
		on_attach = on_attach,
		filetypes = {
			"lua",
			"python",
			"css",
			"docker",
			"html",
			"javascript",
			"javascriptreact",
			"json",
			"jsonc",
			"markdown",
			"typescript",
			"typescriptreact",
			"vue",
		},
		init_options = {
			documentFormatting = true,
			documentRangeFormatting = true,
			hover = true,
			documentSymbol = true,
			codeAction = true,
			completion = true,
		},
		settings = {
			languages = {
				lua = { luacheck, stylua },
				python = { flake8, black },
				css = { prettier },
				docker = { prettier },
				html = { prettier },
				javascript = { eslint_d, prettier },
				javascriptreact = { eslint_d, prettier },
				json = { fixjson, eslint_d },
				jsonc = { fixjson, eslint_d },
				markdown = { prettier },
				typescript = { eslint_d, prettier },
				typescriptreact = { eslint_d, prettier },
				vue = { eslint_d, prettier },
			},
		},
	})
end
