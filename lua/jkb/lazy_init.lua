local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup("jkb.plugins")

--[[
require("lazy").setup({

	{
	'VonHeikemen/lsp-zero.nvim',
	branch = 'v1.x',
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
	},

  }
)
--]]
