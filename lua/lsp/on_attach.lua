local M = {}

M.on_attach = function(_, bufnr)
	local map = function(keys, func, desc, mode)
		mode = mode or "n"
		vim.keymap.set(mode, keys, func, { buffer = bufnr, desc = desc })
	end

	map("grn", vim.lsp.buf.rename, "[LSP] Rename")
	map("gra", vim.lsp.buf.code_action, "[LSP] Code Action", { "n", "v" })

	local builtin = require("telescope.builtin")
	map("grr", builtin.lsp_references, "[LSP] References")
	map("gri", builtin.lsp_implementations, "[LSP] Implementation")
	map("grd", builtin.lsp_definitions, "[LSP] Definition")
	map("grD", vim.lsp.buf.declaration, "[LSP] Declaration")
	map("grt", builtin.lsp_type_definitions, "[LSP] Type Definition")
	map("gO", builtin.lsp_document_symbols, "[LSP] Document Symbols")
	map("gW", builtin.lsp_dynamic_workspace_symbols, "[LSP] Workspace Symbols")

	-- Optional: toggle inlay hints (requires Neovim 0.10+ and supported servers)
	if vim.lsp.inlay_hint and vim.lsp.inlay_hint.is_enabled then
		map("<leader>th", function()
			vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled({ bufnr = bufnr }))
		end, "[LSP] Toggle Inlay Hints")
	end
end

return M
