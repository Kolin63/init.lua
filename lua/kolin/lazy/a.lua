return {
    'vim-scripts/a.vim',

    config = function ()
        vim.keymap.del("i", "<leader>ih")
        vim.keymap.del("i", "<leader>is")
        vim.keymap.del("i", "<leader>ihn")
    end
}
