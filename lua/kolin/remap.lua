-- Leader pv does explore
vim.keymap.set("n", "<leader>pv", function() vim.cmd("Ex") end)

-- Scrolling Remap
vim.keymap.set("n", "<C-k>", "<C-y>k")
vim.keymap.set("n", "<C-j>", "<C-e>j")

-- Tab Remaps
vim.keymap.set("n", "<C-t>", vim.cmd.tabnew)
vim.keymap.set("n", "<Tab>", vim.cmd.tabn)
vim.keymap.set("n", "<S-Tab>", vim.cmd.tabp)

-- Leader Y Goes to System Clipboard
-- + Register is System Clipboard
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

-- Get Rid of Q
vim.keymap.set("n", "Q", "<nop>")

-- Leader S over a word to replace it
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
