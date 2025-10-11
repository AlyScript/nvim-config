return {
	"madskjeldgaard/cppman.nvim",

	cmd = "CPPMan",
	keys = {
		{
			"M",
			function()
				require("cppman").open_cppman_for(vim.fn.expand("<cword>"))
			end,
			desc = "cppman docs",
		},
	},

	opts = {
		floating_window = true,
		max_width = 120,
		max_height = 30,
		wrap = true,
	},
}
