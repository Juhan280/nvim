return { ---@type LazySpec
	{
		"NeogitOrg/neogit",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"sindrets/diffview.nvim",
			"nvim-telescope/telescope.nvim",
		},
		version = false,
		cmd = "Neogit",
		opts = {},
	},
	{
		"lewis6991/gitsigns.nvim",
		event = "VeryLazy",
		opts = { current_line_blame = true },
	},
}
