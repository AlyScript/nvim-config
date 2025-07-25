return {
	{
		"rebelot/kanagawa.nvim",
		priority = 1000, -- Load before anything else
		lazy = false,
		config = function()
			require("kanagawa").setup({
				compile = false, -- if you want faster startup by compiling theme
				transparent = false, -- set to true if using terminal with transparent bg
				terminalColors = true,
				dimInactive = true,
				globalStatus = true,
				styles = {
					comments = { italic = true },
					keywords = { italic = false },
					functions = {},
					variables = {},
					conditionals = { italic = true },
				},
			})

			vim.cmd("colorscheme kanagawa")
		end,
	},
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		opts = {
			options = { theme = "everforest" },
		},
	},
	{
		"folke/todo-comments.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
		opts = {},
	},
	{
		"lewis6991/gitsigns.nvim",
		dependencies = {},
		opts = {},
	},
}
