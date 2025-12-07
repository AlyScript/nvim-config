local cp = require("config.utils")

vim.g.mapleader = ","
vim.g.maplocalleader = ","
vim.keymap.set(
    "n",
    "<Esc>",
    "<cmd>nohlsearch<CR>",
    { desc = "Clear highlights on search when pressing <Esc> in normal mode" }
)
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move line down in visual" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move line up in visual" })
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]]) -- Yank to system keyboard
vim.keymap.set("n", "<leader>Y", [["+Y]])          -- Yank whole line to system keyboard
vim.keymap.set({ "n", "v" }, "<tab>", "%")

-- Window Shortcuts
vim.keymap.set("n", "<leader>sv", ":vsplit<CR>")
vim.keymap.set("n", "<leader>sc", ":belowright split | term<CR>", { desc = "Split Horizontally and open a terminal" })
vim.keymap.set("n", "<leader>tb", ":tab ball<CR>", { desc = "Tabs from all windows" })
vim.keymap.set("n", "<leader>sb", ":tab sball<CR>", { desc = "Tabs from all buffer" })
vim.keymap.set("n", "<leader>tn", ":tabnew<CR>", { desc = "Open tab" })
vim.keymap.set("n", "<leader>x", ":tabclose<CR>", { desc = "Close tab" })
vim.keymap.set("n", "gb", ":tabprevious<CR>", { desc = "Previous tab (go back)" })

vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]], { desc = "Exit terminal mode" })
vim.keymap.set("i", "jj", "<Esc>", { desc = "Exit insert mode" })
vim.keymap.set("n", "<leader>en", ":e ~/.config/nvim<CR>", { desc = "[E]dit [N]eovim Config" })

-- Building and running buffers
vim.keymap.set('n', '<leader>bb', function()
    local file_path = vim.fn.expand('%:p')

    local build_cmd = string.format("g++ %s --std=c++23 && echo 'Build successful.'", file_path)

    cp.run_in_terminal(build_cmd)
end, { desc = "[B]uild current [B]uffer" })
--
vim.keymap.set('n', '<leader>br', function()
    local file_path = vim.fn.expand('%:p')

    local build_run_cmd = string.format("g++ %s --std=c++23 && ./a.out", file_path)

    cp.run_in_terminal(build_run_cmd)
end, { desc = "[B]ompile and [R]un current buffer" })
