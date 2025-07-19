return {
  "nvim-tree/nvim-tree.lua",
  dependencies = { "nvim-tree/nvim-web-devicons" }, -- fancy file icons
  version = "*",
  lazy = false, -- optional: load on start
  config = function()
    require("nvim-tree").setup({
      view = {
        width = 30,
        side = "left",
      },
      renderer = {
        group_empty = true,
      },
      filters = {
        dotfiles = false,
      },
    })

    -- Optional: disable netrw (the default explorer)
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1
  end,
}
