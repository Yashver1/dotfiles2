vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Go to definition" })

vim.keymap.set("n", "<space>e", vim.diagnostic.open_float, { desc = "Open line diagnostic" })

vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Go to Left Window", remap = true })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Go to Lower Window", remap = true })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Go to Upper Window", remap = true })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Go to Right Window", remap = true })

vim.keymap.set("n", "<S-h>", "<cmd>bprevious<cr>", { desc = "Prev Buffer" })
vim.keymap.set("n", "<S-l>", "<cmd>bnext<cr>", { desc = "Next Buffer" })
vim.keymap.set("n", "<leader>bd", vim.api.nvim_buf_delete, { desc = "Delete current buffer" })
vim.keymap.set("n", "<leader>bd", function()
	vim.api.nvim_buf_delete(0, { force = true })
end, { desc = "Delete current buffer" })

vim.keymap.set("n", "<leader>qq", "<cmd>qa<cr>", { desc = "Quit All" })
