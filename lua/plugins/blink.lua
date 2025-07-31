return {
	{
		"saghen/blink.cmp",
		dependencies = { "rafamadriz/friendly-snippets" },
		version = "1.*",
		opts = {
			autocomplete = true,
			keymap = {
				["<C-k>"] = { "select_prev", "fallback_to_mappings" },
				["<C-j>"] = { "select_next", "fallback_to_mappings" },
			},
			appearance = {
				nerd_font_variant = "mono",
			},
		},
	},
}
