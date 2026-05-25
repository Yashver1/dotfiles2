return {
	"ibhagwan/fzf-lua",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	opts = {},
	config = function(_, opts)
		local fzf = require("fzf-lua")
		fzf.setup({ "max-perf" })
		vim.keymap.set("n", "<leader>/", "<cmd>FzfLua grep<CR>", {
			desc = "grep text from cwd",
		})

		vim.keymap.set("n", "<leader>f", "<cmd>FzfLua files<CR>", {
			desc = "find files from cwd",
		})

		vim.keymap.set("n", "<leader>s", "<cmd>FzfLua treesitter<CR>", {
			desc = "find symbols from current window",
		})
	end,
}
