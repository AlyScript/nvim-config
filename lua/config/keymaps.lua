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
-- vim.keymap.set("n", "<leader>tt", ":NvimTreeToggle<CR>", { desc = "Toggle file tree" })
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move line down in visual" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move line up in visual" })
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]]) -- Yank to system keyboard
vim.keymap.set("n", "<leader>Y", [["+Y]]) -- Yank whole line to system keyboard

-- Window Shortcuts
vim.keymap.set("n", "<leader>sv", ":vsplit<CR>")
vim.keymap.set("n", "<leader>s", ":split<CR>", { desc = "Split Horizontally" })
vim.keymap.set("n", "<leader>tb", ":tab ball<CR>", { desc = "Tabs from all windows" })
vim.keymap.set("n", "<leader>sb", ":tab sball<CR>", { desc = "Tabs from all buffer" })
vim.keymap.set("n", "<leader>t", ":tabnew<CR>", { desc = "Open tab" })
vim.keymap.set("n", "<leader>x", ":tabclose<CR>", { desc = "Close tab" })
vim.keymap.set("n", "gb", ":tabprevious<CR>", { desc = "Previous tab (go back)" })
