-- setup lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazypath
	})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    -- telescope
	{
		'nvim-telescope/telescope.nvim', tag = '0.1.4',
		dependencies = {'nvim-lua/plenary.nvim'}
	},
    -- catppuccin theme
	{
		'catppuccin/nvim', name = 'catppuccin', priority = 1000
	},
    -- treesitter
	{
		'nvim-treesitter/nvim-treesitter', cmd = {'TSUpdate'}
	},
    -- lsp zero & dependencies   
	{'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},
	{'neovim/nvim-lspconfig'},
	{'hrsh7th/cmp-nvim-lsp'},
	{'hrsh7th/nvim-cmp'},
	{'L3MON4D3/LuaSnip'},
	{'williamboman/mason.nvim'},
	{'williamboman/mason-lspconfig.nvim'},
    -- tmux navigator
    {
        'christoomey/vim-tmux-navigator',
        lazy = false,
    },
})
