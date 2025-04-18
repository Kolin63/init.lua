return {
    'nvim-tree/nvim-tree.lua',

    opts = {
        hijack_cursor = true,
        update_focused_file = true,
    },

    config = function ()
        -- disable netrw at the very start of your init.lua
        vim.g.loaded_netrw = 1
        vim.g.loaded_netrwPlugin = 1

        -- enable 24-bit colour
        vim.opt.termguicolors = true

        -- open in working directory
        vim.g.nvim_tree_respect_buf_cwd = 1

        require("nvim-tree").setup({
            sort = {
                sorter = "case_sensitive",
            },
            renderer = {
                group_empty = true,
            },
            filters = {
                -- this means dotfiles __ARE__ visible
                dotfiles = false,
            },
            actions = {
                open_file = {
                    eject = false,
                    quit_on_open = true,
                },
            },
            view = {
                width = 45,
                number = true,
                relativenumber = true
            }
        }) 
    end
}
