local on_attach = require("lsp.on_attach").on_attach
local capabilities = require("blink.cmp").get_lsp_capabilities()

vim.lsp.config("pyright", {
	on_attach = on_attach,
	capabilities = capabilities,
	settings = {
		python = {
			analysis = {
				typeCheckingMode = "basic", -- "off", "basic", or "strict"
				autoSearchPaths = true,
				useLibraryCodeForTypes = true,
				diagnosticMode = "workspace", -- or "openFilesOnly"
				autoImportCompletions = true,
			},
		},
	},
})

vim.lsp.enable("pyright")
