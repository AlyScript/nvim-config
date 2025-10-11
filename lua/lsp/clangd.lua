-- Add the following to ~/.clangd
-- CompileFlags:
--   Add: [-std=c++23]
--   Compiler: <path>

local on_attach = require("lsp.on_attach").on_attach
local capabilities = require("blink.cmp").get_lsp_capabilities()

vim.lsp.config("clangd", {
	on_attach = on_attach,
	capabilities = capabilities,
	cmd = {
		"clangd",
		"--header-insertion=iwyu",
		"--completion-style=detailed",
		"--function-arg-placeholders=0",
		"--query-driver=/opt/homebrew/opt/llvm/bin/clang++,/usr/bin/clang++",
	},
})

vim.lsp.enable("clangd")
