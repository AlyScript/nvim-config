return {
    {
        "makestatic/oblique.nvim",
        commit = "b6c40c0c04a756efb2ff42f4fffde352e05eac96",
        lazy = false,
        priority = 1000,
        config = function()
            vim.cmd("colorscheme oblique")
            vim.opt.guicursor = "n-v-c-sm:block,i-ci-ve:ver25,r-cr:hor20,o:hor50,a:blinkon0"
        end
    },
    -- {
    --     "vague-theme/vague.nvim",
    --     lazy = false,    -- make sure we load this during startup if it is your main colorscheme
    --     priority = 1000, -- make sure to load this before all the other plugins
    --     config = function()
    --         -- NOTE: you do not need to call setup if you don't want to.
    --         require("vague").setup({
    --             -- optional configuration here
    --         })
    --         vim.cmd("colorscheme vague")
    --     end
    -- },
    -- {
    -- 	"rebelot/kanagawa.nvim",
    -- 	priority = 1000, -- Load before anything else
    -- 	lazy = false,
    -- 	config = function()
    -- 		require("kanagawa").setup({
    -- 			compile = false, -- if you want faster startup by compiling theme
    -- 			transparent = false, -- set to true if using terminal with transparent bg
    -- 			terminalColors = true,
    -- 			dimInactive = true,
    -- 			globalStatus = true,
    -- 			styles = {
    -- 				comments = { italic = true },
    -- 				keywords = { italic = false },
    -- 				functions = {},
    -- 				variables = {},
    -- 				conditionals = { italic = true },
    -- 			},
    -- 		})
    --
    -- 		vim.cmd("colorscheme kanagawa")
    -- 	end,
    -- },
    {
        "nvim-lualine/lualine.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        opts = {
            -- options = { theme = "everforest" },
            options = { theme = "auto" },
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
