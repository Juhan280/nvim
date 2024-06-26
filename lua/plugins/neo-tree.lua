return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	opts = {},
	keys = {
		{ "<C-n>",     ":Neotree toggle reveal<CR>", desc = "Neotree" },
		{ "<leader>e", ":Neotree focus reveal<CR>",  desc = "Neotree focud" },
	},
	cmd = "Neotree",
}
