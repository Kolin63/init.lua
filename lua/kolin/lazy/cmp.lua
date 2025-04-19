return {
    'hrsh7th/nvim-cmp',

    dependencies = {
        'neovim/nvim-lspconfig',
        'hrsh7th/cmp-nvim-lsp',
        'hrsh7th/cmp-buffer',
        'hrsh7th/cmp-path',
        'hrsh7th/cmp-cmdline',
        'hrsh7th/nvim-cmp',
    },

    config = function()
        local cmp = require('cmp')

        cmp.setup({
            mapping = cmp.mapping.preset.insert({
                ['<C-j>'] = cmp.mapping.select_prev_item(cmp_select),
                ['<C-k>'] = cmp.mapping.select_next_item(cmp_select),
                ['<C-l>'] = cmp.mapping.confirm({ select = true }),
                ['<Tab>'] = cmp.mapping.confirm({ select = true }),
            }),

            sources = cmp.config.sources({
                { name = 'nvim_lsp' },
            }, {
                { name = 'buffer' },
            })
        })
    end
}
