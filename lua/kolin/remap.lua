-- Leader pv does explore
vim.keymap.set("n", "<leader>pv", require('oil').open)

-- Tab Remaps
vim.keymap.set("n", "<C-t>", function()
    vim.cmd.tabnew()
    require('oil').open()
    require('telescope.builtin').find_files()
end)

vim.keymap.set("n", "<Tab>", vim.cmd.tabn)
vim.keymap.set("n", "<S-Tab>", vim.cmd.tabp)

-- Scrolling Remap
vim.keymap.set("n", "<M-k>", "2<C-y>2k")
vim.keymap.set("n", "<M-j>", "2<C-e>2j")

-- Leader Y Goes to System Clipboard
-- + Register is System Clipboard
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

-- Void Register Delete
vim.keymap.set({ "n", "v" }, "<leader>d", "\"_d")
vim.keymap.set({ "n", "v" }, "<leader>D", "\"_dd")

-- Get Rid of Q
vim.keymap.set("n", "Q", "<nop>")

-- Leader S over a word to replace it
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Split Remaps (M is alt, better as right alt)
vim.keymap.set("n", "<M-s>", function ()
    vim.cmd.split()
    require('oil').open()
end)
vim.keymap.set("n", "<M-v>", function () 
    vim.cmd.vsplit()
    require('oil').open()
end)
vim.keymap.set("n", "<M-t>", function ()
    vim.cmd.split()
    vim.cmd.term()
    vim.cmd.norm('A')
end)

-- Big D to dd
vim.keymap.set("n", "D", "dd")
-- Big Y to yy
vim.keymap.set("n", "Y", "yy")
-- Big C to cc
vim.keymap.set("n", "C", "cc")

-- Alt d deletes word in insert mode
vim.keymap.set("i", "<M-d>", "<Esc>diwi")

-- Ctrl d maps to backspace in insert mode
vim.keymap.set("i", "<C-d>", "<BS>")

-- Emacs controls (dont worry guys its ok)
vim.keymap.set("i", "<C-f>", "<Esc>la")
vim.keymap.set("i", "<C-b>", "<Esc>i")

-- Ctrl Shift G Opens GitHub Repo in Web
vim.keymap.set("n", "<C-G>", function() vim.cmd("silent exec \"!gh repo view --web\"") end)

-- Auto Braces and Parentheses and stuff
vim.keymap.set("i", "{", "{}<Esc>i")
vim.keymap.set("i", "(", "()<Esc>i")
vim.keymap.set("i", "\"", "\"\"<Esc>i")
vim.keymap.set("i", "'", "''<Esc>i")

-- Ctrl Z undo
vim.keymap.set("i", "<C-z>", "<Esc>ui")
vim.keymap.set("n", "<C-z>", "<Esc>u")
