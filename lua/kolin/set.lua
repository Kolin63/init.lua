-- Line Numbers
vim.opt.rnu = true
vim.opt.number = true

-- Line Wrap
vim.opt.wrap = false

-- Tabs
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

-- Makes Undo Files in a seperate directory
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

-- Splits
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Colors
vim.opt.syntax = on
vim.opt.termguicolors = true
vim.opt.bg = dark

-- Faster Update Times
vim.opt.updatetime = 50

-- Netrw LSD Emojis
vim.g.netrw_list_cmd = 'lsd'

-- Cursor Line
-- GRUVBOX!!!!!
vim.opt.cursorline = true
vim.cmd("highlight CursorLine guibg=#1d2021")

-- Color Column
vim.opt.colorcolumn = "80"
