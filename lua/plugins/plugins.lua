return {
	{ 
		"ellisonleao/gruvbox.nvim", 
		priority = 1000, 
		config = function()
			vim.cmd([[colorscheme gruvbox]])
		end,
	},
	{ "nvim-telescope/telescope.nvim" },
	{ "nvim-treesitter/nvim-treesitter", build = ':TSUpdate' },
	{ "mbbill/undotree" },
	{ "tpope/vim-fugitive" },
	{'neovim/nvim-lspconfig'},
	{'hrsh7th/cmp-nvim-lsp'},
	{'hrsh7th/nvim-cmp'},
	{ "williamboman/mason.nvim" },
    { 'vim-airline/vim-airline' },
    { 'vim-airline/vim-airline-themes' },
}
