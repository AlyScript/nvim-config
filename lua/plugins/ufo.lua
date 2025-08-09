return {
	"kevinhwang91/nvim-ufo",
	dependencies = { "kevinhwang91/promise-async" },
	event = "VeryLazy",
	init = function()
		vim.opt.foldcolumn = "1"
		vim.opt.foldlevel = 99
		vim.opt.foldlevelstart = 99
		vim.opt.foldenable = true

		-- Clean symbols; foldsep as space removes the vertical bars
		vim.opt.fillchars:append({
			foldopen = "󰧖",
			foldclose = "󰧚",
			foldsep = "",
		})
	end,
	opts = {
		provider_selector = function(_, filetype, _)
			-- TS first, indent fallback; tweak per filetype if needed
			return { "treesitter", "indent" }
		end,
		open_fold_hl_timeout = 0,
	},
	keys = {
		{
			"zR",
			function()
				require("ufo").openAllFolds()
			end,
			desc = "Open all folds",
		},
		{
			"zM",
			function()
				require("ufo").closeAllFolds()
			end,
			desc = "Close all folds",
		},
		{
			"zr",
			function()
				require("ufo").openFoldsExceptKinds()
			end,
			desc = "Open folds except kinds",
		},
		{
			"zm",
			function()
				require("ufo").closeFoldsWith()
			end,
			desc = "Close folds with kind",
		},
	},
}
