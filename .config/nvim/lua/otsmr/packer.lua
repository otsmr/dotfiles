-- This file can be loaded by calling `lua require('plugins')` from your init.vim
local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  }
  print "Installing packer close and reopen Neovim..."
  vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
  git = {
    clone_timeout = 300, -- Timeout, in seconds, for git clones
  },
}

return require('packer').startup(function(use)

  use 'wbthomason/packer.nvim'
  use 'ThePrimeagen/git-worktree.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use({
    "j-hui/fidget.nvim",
    config = function()
      require("fidget").setup()
    end
  })

  -- Snippet engine
  use('hrsh7th/vim-vsnip')

  -- Adds extra functionality over rust analyzer
  use({'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'})
  use('nvim-treesitter/playground')
  use('ThePrimeagen/harpoon')
  use('mbbill/undotree')
  use('tpope/vim-fugitive')


  -- Rust
  use("mattfbacon/rust-tools.nvim")
  use('nvim-lua/plenary.nvim')
  use('mfussenegger/nvim-dap')
  use('rust-lang/rust.vim')


  -- LSP
  use {
	  'VonHeikemen/lsp-zero.nvim',
	  requires = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},
		  {'williamboman/mason.nvim'},
		  {'williamboman/mason-lspconfig.nvim'},

		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},
		  {'hrsh7th/cmp-buffer'},
		  {'hrsh7th/cmp-path'},
		  {'saadparwaiz1/cmp_luasnip'},
		  {'hrsh7th/cmp-nvim-lsp'},
		  {'hrsh7th/cmp-nvim-lua'},

		  -- Snippets
		  {'L3MON4D3/LuaSnip'},
		  {'rafamadriz/friendly-snippets'},
	  }
  }


  -- Layout and Features
  use("folke/zen-mode.nvim")
  use("akinsho/toggleterm.nvim")
  use {
	'nvim-tree/nvim-tree.lua',
	requires = {
	  'nvim-tree/nvim-web-devicons',
    }
  }
  use("akinsho/bufferline.nvim")
  use("folke/tokyonight.nvim")
  use("moll/vim-bbye")
  use {
	'nvim-lualine/lualine.nvim',
	requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
  use("goolord/alpha-nvim")

	--   use({
	--     "Pocco81/auto-save.nvim",
	--     config = function()
	--       require("auto-save").setup()
	-- end,
	--   })

  use({
    "terrortylor/nvim-comment",
    config = function()
      require("nvim_comment").setup({
        comment_empty = false,
        create_mappings = true,
        line_mapping = "gcc",
        operator_mapping = "gc",
        comment_chunk_text_object = "ic"
      })
	end,
  })

  use { "ray-x/lsp_signature.nvim" }

end)

