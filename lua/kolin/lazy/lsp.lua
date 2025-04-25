return {
    'neovim/nvim-lspconfig',

    dependencies = {
        'williamboman/mason.nvim',
        'williamboman/mason-lspconfig.nvim',
    },

    config = function ()
        require('mason').setup()
        require('mason-lspconfig').setup()

        vim.keymap.set("n", "K", vim.lsp.buf.hover)
        vim.keymap.set("n", "X", vim.diagnostic.open_float)

        vim.lsp.enable('clangd')
        vim.lsp.config('clangd', {
            settings = {
                ['clangd'] = {
                    ArgumentLists = "none"
                }
            }
        })

        vim.lsp.enable('lua_ls')
        vim.lsp.config('lua_ls', {
            settings = {
                ['lua_ls'] = {}
            }
        })
    end
}
