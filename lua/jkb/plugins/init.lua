return {
    {
        "nvim-lua/plenary.nvim",
    },


	{
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate"
    },

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
