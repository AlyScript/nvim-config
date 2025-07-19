local lspconfig = require("lspconfig")
local on_attach = require("lsp.on_attach").on_attach
local capabilities = require("blink.cmp").get_lsp_capabilities()

lspconfig.pyright.setup({
	on_attach = on_attach,
	capabilities = capabilities,
	settings = {
		python = {
			analysis = {
				typeCheckingMode = "basic", -- or "strict", "off"
				autoSearchPaths = true,
				useLibraryCodeForTypes = true,
				diagnosticMode = "workspace", -- or "openFilesOnly"
				autoImportCompletions = true,
			},
		},
	},
})
