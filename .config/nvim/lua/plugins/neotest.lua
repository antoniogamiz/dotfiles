return {
	{
		"nvim-neotest/neotest",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"antoinemadec/FixCursorHold.nvim",
			"nvim-treesitter/nvim-treesitter",
		},
	},
	{
		"nvim-neotest/neotest-python",
		dependencies = {
			"nvim-neotest/neotest",
		},
		config = function()
			require("neotest").setup({
				adapters = {
					require("neotest-python"),
				},
			})

			-- run nearest test
			vim.keymap.set("n", "<leader>dm", "<cmd>lua require('neotest').run.run()<cr>", {})

			-- debug nearest test
			vim.keymap.set("n", "<leader>dM", "<cmd>lua require('neotest').run.run({strategy = 'dap'})<cr>", {})

			-- run whole file
			vim.keymap.set("n", "<leader>df", "<cmd>lua require('neotest').run.run({vim.fn.expand('%')})<cr>", {})

			-- debug whole file
			vim.keymap.set(
				"n",
				"<leader>dF",
				"<cmd>lua require('neotest').run.run({vim.fn.expand('%'), strategy = 'dap'})<cr>",
				{}
			)

			-- toggle summary
			vim.keymap.set("n", "<leader>dS", "<cmd>lua require('neotest').summary.toggle()<cr>", {})

			-- open output panel
			-- vim.keymap.set("n", "<leader>to", "<cmd>lua require('neotest').output_panel.open()<cr>", {expr = true})
			vim.keymap.set("n", "<leader>to", function()
				require("neotest").summary.clear()
				require("neotest").summary.output_panel.open()
			end, { expr = true })
		end,
	},
}
