return {
	"madskjeldgaard/cppman.nvim",

	cmd = "CPPMan",
	keys = {
		{
			"M",
			function()
				require("cppman").open_cppman_for(vim.fn.expand("<cword>"))
			end,
			desc = "Open word under cursor",
		},

		{
			"<leader>c",
			function()
				require("cppman").input()
			end,
			desc = "Open search box",
		},
	},

	opts = {
		floating_window = true,
		max_width = 120,
		max_height = 30,
		wrap = true,
	},
}
