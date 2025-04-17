return {
    'nvim-tree/nvim-tree.lua',

    config = function ()
        -- disable netrw at the very start of your init.lua
        vim.g.loaded_netrw = 1
        vim.g.loaded_netrwPlugin = 1

        -- optionally enable 24-bit colour
        vim.opt.termguicolors = true

        -- empty setup using defaults
        require("nvim-tree").setup()

        -- OR setup with some options
        require("nvim-tree").setup({
            sort = {
                sorter = "case_sensitive",
            },
            renderer = {
                group_empty = true,
            },
            filters = {
                dotfiles = true,
            },
            actions = {
                open_file = {
                    quit_on_open = true
                }
            },
            view = {
                width = 45
            }
        }) 
    end
}
