-- Leader pv does explore
vim.keymap.set("n", "<leader>pv", ":NvimTreeFindFile<CR>")

-- Tab Remaps
vim.keymap.set("n", "<C-t>", function()
    vim.cmd.tabnew()
    require('nvim-tree.api').tree.open({ current_window = true })
end)

vim.keymap.set("n", "<Tab>", vim.cmd.tabn)
vim.keymap.set("n", "<S-Tab>", vim.cmd.tabp)

-- Scrolling Remap
vim.keymap.set("n", "<C-k>", "<C-y>k")
vim.keymap.set("n", "<C-j>", "<C-e>j")

-- Leader Y Goes to System Clipboard
-- + Register is System Clipboard
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

-- Void Register Delete
vim.keymap.set({ "n", "v" }, "<leader>d", "\"_d")

-- Get Rid of Q
vim.keymap.set("n", "Q", "<nop>")

-- Leader S over a word to replace it
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

