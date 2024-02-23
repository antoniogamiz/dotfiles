return {
	"ThePrimeagen/refactoring.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-treesitter/nvim-treesitter",
	},
	config = function()
		require("refactoring").setup()
		vim.keymap.set({ "n", "x" }, "<leader>rr", function()
			require("refactoring").select_refactor()
		end)
		vim.keymap.set({ "n", "v" }, "<leader>rn", vim.lsp.buf.rename, {})
	end,
}
