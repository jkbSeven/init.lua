return {
    {
        "nvim-lua/plenary.nvim",
        name = "plenary"
    },

    {
        'nvim-telescope/telescope.nvim',
        dependencies = {
            "plenary",
        }
    },

	{
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate"
    },

	"nvim-treesitter/nvim-treesitter-context",

	"theprimeagen/harpoon",

	"mbbill/undotree",

	"folke/zen-mode.nvim",

	"tpope/vim-fugitive",

	{
	"folke/trouble.nvim",
	config = function()
	  require("trouble").setup {
	      icons = false,
	  }
	end
	},
}
