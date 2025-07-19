local lspconfig = require("lspconfig")
local on_attach = require("lsp.on_attach").on_attach
local capabilities = require("blink.cmp").get_lsp_capabilities()

lspconfig.lua_ls.setup({
	on_attach = on_attach,
	capabilities = capabilities,
	settings = {
		Lua = {
			runtime = { version = "LuaJIT" },
			diagnostics = { globals = { "vim" } },
			workspace = {
				library = vim.api.nvim_get_runtime_file("", true),
				checkThirdParty = false,
			},
			telemetry = { enable = false },
		},
	},
})
