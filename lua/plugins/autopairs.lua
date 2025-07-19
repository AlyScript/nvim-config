return {
	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		config = function()
			local npairs = require("nvim-autopairs")

			npairs.setup({
				check_ts = true, -- Enable Treesitter checks
				enable_check_bracket_line = true,
				ignored_next_char = "[%w%.]", -- Don’t add pairs after alphanum/dot
				fast_wrap = {},
			})

			-- Optional: Custom rules (e.g. spaces inside brackets)
			local Rule = require("nvim-autopairs.rule")

			-- Add space between brackets
			npairs.add_rules({
				Rule(" ", " "):with_pair(function(opts)
					local pair = opts.line:sub(opts.col - 1, opts.col)
					return vim.tbl_contains({ "()", "[]", "{}" }, pair)
				end),
				Rule("( ", " )"):with_pair(function()
					return false
				end),
				Rule("{ ", " }"):with_pair(function()
					return false
				end),
				Rule("[ ", " ]"):with_pair(function()
					return false
				end),
			})
		end,
	},
}
