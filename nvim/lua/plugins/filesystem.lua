return {
	{
		"mikavilpas/yazi.nvim",
		version = "*",
		event = "VeryLazy",
		dependencies = {
			{ "nvim-lua/plenary.nvim", lazy = true },
		},
		keys = {
			{
				"<leader>-",
				mode = { "n", "v" },
				"<cmd>Yazi<cr>",
				desc = "Open yazi at the current file",
			},
			{
				"<leader>cw",
				"<cmd>Yazi cwd<cr>",
				desc = "Open the file manager in nvim's working directory",
			},
			{
				"<c-up>",
				"<cmd>Yazi toggle<cr>",
				desc = "Resume the last yazi session",
			},
		},
		opts = {
			yazi_floating_window_border = "rounded",
			open_for_directories = true,
			keymaps = {
				show_help = "<f1>",
			},
		},
		init = function()
			vim.g.loaded_netrwPlugin = 1
		end,
	},
	{
		"stevearc/oil.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		keys = {
			{ "-", "<cmd>Oil<cr>", desc = "Open Parent Directory" },
		},
		opts = {
			default_file_explorer = true, -- Replaces netrw automatically
			view_options = {
				show_hidden = true,
			},
			keymaps = {
				["<C-s>"] = false,

				["<C-h>"] = "<cmd>TmuxNavigateLeft<CR>",
				["<C-j>"] = "<cmd>TmuxNavigateDown<CR>",
				["<C-k>"] = "<cmd>TmuxNavigateUp<CR>",
				["<C-l>"] = "<cmd>TmuxNavigateRight<CR>",

				["<C-x>"] = "actions.select_split",
				["<C-v>"] = "actions.select_vsplit",
			},
		},
	},
}
