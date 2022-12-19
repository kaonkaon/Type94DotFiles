return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'
	use 'junegunn/vim-easy-align'
	use 'scrooloose/nerdtree'
	use 'markonm/traces.vim'
	use 'previm/previm'
	use 'jiangmiao/auto-pairs'
	use 'ervandew/supertab'
	use 'tpope/vim-commentary'
	use 'junegunn/fzf'
	use 'itchyny/lightline.vim'
	use 'mattn/vim-maketable'
	use 'easymotion/vim-easymotion'
	use 'osyo-manga/vim-anzu'
	use 'mhinz/vim-startify'
	use 'gkeep/iceberg-dark'
	use 'cocopon/iceberg.vim'
	use 'matze/vim-move'
	use 'unblevable/quick-scope'
	use 'dkarter/bullets.vim'
	use 'andweeb/presence.nvim'
	use 'anott03/nvim-lspinstall'
	use 'rafamadriz/neon'
	use 'morhetz/gruvbox'
	use {
		'nvim-treesitter/nvim-treesitter',
		run = function()
			local ts_update = require('nvim-treesitter.install').update({ with_sync = truw })
			ts_update()
		end,
	}
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.0',
		requires = { {'nvim-lua/plenary.nvim'} }
	}
	use {
  		'nvim-tree/nvim-tree.lua',
  		requires = {
    			'nvim-tree/nvim-web-devicons', -- optional, for file icons
  		},
	}
end)
