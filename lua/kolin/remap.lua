-- Leader pv does explore
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Tab Remaps
vim.keymap.set("n", "<C-t>", function()
    vim.cmd.tabnew()
    vim.cmd.Ex()
    require('telescope.builtin').find_files()
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

-- Split Remaps (M is alt, better as right alt)
vim.keymap.set("n", "<M-s>", function ()
    vim.cmd.split()
    vim.cmd.Ex()
end)
vim.keymap.set("n", "<M-v>", function () 
    vim.cmd.vsplit()
    vim.cmd.Ex()
end)

-- Big D to dd
vim.keymap.set("n", "D", "dd")
-- Big Y to yy
vim.keymap.set("n", "Y", "yy")
-- Big C to cc
vim.keymap.set("n", "C", "cc")
