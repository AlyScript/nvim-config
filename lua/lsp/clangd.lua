local lspconfig = require("lspconfig")
local on_attach = require("lsp.on_attach").on_attach
local capabilities = require("blink.cmp").get_lsp_capabilities()

require("lspconfig").clangd.setup({
	on_attach = on_attach,
	capabilities = capabilities,
	cmd = {
		"clangd",
		"--header-insertion=iwyu",
		"--completion-style=detailed",
		"--function-arg-placeholders=0",
	},
})
