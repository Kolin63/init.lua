return {
    'neovim/nvim-lspconfig',

    config = function ()
        vim.lsp.enable('clangd')
        vim.lsp.config('clangd', {
            settings = {
                ['clangd'] = {}
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
