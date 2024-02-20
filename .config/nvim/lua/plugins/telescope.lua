return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.5",
		branch = "0.1.x",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			require("telescope").setup({
				pickers = {
					find_files = {
						hidden = true,
						additional_args = { "--iglob", "!.git", "--iglob", "!node_modules" },
					},
					live_grep = {
						additional_args = function(opts)
							return { "--hidden", "--iglob", "!.git", "--iglob", "!node_modules" }
						end,
					},
				},
			})
			local builtin = require("telescope.builtin")
			vim.keymap.set("n", "<C-p>", builtin.find_files, {})
			vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
			vim.keymap.set("n", "<leader>tb", "<cmd>lua require('telescope.builtin').buffers()<cr>", {})
		end,
	},
	{
		"nvim-telescope/telescope-ui-select.nvim",
		config = function()
			require("telescope").setup({
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({}),
					},
				},
			})
			require("telescope").load_extension("ui-select")
		end,
	},
}
