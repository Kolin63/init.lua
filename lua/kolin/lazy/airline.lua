return {
    'vim-airline/vim-airline',

    dependencies = {
        'vim-airline/vim-airline-themes'
    },

    config = function ()
        vim.api.nvim_set_var('airline_theme', 'base16_gruvbox_dark_medium')
        vim.api.nvim_set_var('airline_powerline_fonts', 1)

        vim.api.nvim_set_var('airline_left_sep', '')
        vim.api.nvim_set_var('airline_right_sep', '')

        vim.api.nvim_set_var('airline#extensions#tabline#enabled', 1)
        vim.api.nvim_set_var('airline#extensions#tabline#show_buffers', 0)
    end
}
