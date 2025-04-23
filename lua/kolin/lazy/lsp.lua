return {
    'neovim/nvim-lspconfig',

    config = function ()
        vim.keymap.set("n", "K", vim.lsp.buf.hover)

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
