return {
	"neovim/nvim-lspconfig",
	dependencies = {
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
		{ "j-hui/fidget.nvim", opts = {} },

		{
			"folke/lazydev.nvim",
			ft = "lua", -- only activates on Lua files
			opts = {},
		},
	},
	config = function()
		require("mason").setup()
		require("mason-lspconfig").setup({
			ensure_installed = { "lua_ls", "pyright", "ts_ls" },
		})

		-- Load all custom LSP configs from lua/lsp/*
		require("lsp")
	end,
}
