return {
	{
		"williamboman/mason.nvim",
		lazy = false,
		config = function()
			require("mason").setup()
		end,
		opts = {
			ensure_installed = {
				"rufus",
				"debugpy",
				"mypy",
				"black",
				"pyright",
				"python-lsp-server",
				"jedi_language_server",
			},
		},
	},
	{
		"williamboman/mason-lspconfig.nvim",
		lazy = false,
		opts = {
			auto_install = true,
		},
	},
	{
		"neovim/nvim-lspconfig",
		lazy = false,
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			local lspconfig = require("lspconfig")

			-- lspconfig.pylsp.setup({
			--   capabilities = capabilities,
			--   filetypes = { "python" },
			-- })

			-- lspconfig.ruff_lsp.setup({
			-- 	capabilities = capabilities,
			-- 	filetypes = { "python" },
			-- })

			lspconfig.jedi_language_server.setup({
				capabilities = capabilities,
				filetypes = { "python" },
			})

			lspconfig.pyright.setup({
				capabilities = capabilities,
				filetypes = { "python" },
			})

			lspconfig.tsserver.setup({
				capabilities = capabilities,
			})
			lspconfig.html.setup({
				capabilities = capabilities,
			})
			lspconfig.lua_ls.setup({
				capabilities = capabilities,
			})

			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
			vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
			vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
			vim.keymap.set("n", "<leader>gn", vim.diagnostic.goto_next, {})
			vim.keymap.set("n", "gi", vim.lsp.buf.implementation, {})
		end,
	},
	{
		"nvimdev/lspsaga.nvim",
		config = function()
			require("lspsaga").setup({})
			vim.keymap.set("n", "<leader>pd", "<cmd>:Lspsaga peek_type_definition<cr>", {})
		end,
		dependencies = {
			"nvim-treesitter/nvim-treesitter",
			"nvim-tree/nvim-web-devicons",
		},
	},
	{
		"ray-x/lsp_signature.nvim",
		event = "VeryLazy",
		opts = {},
		config = function(_, opts)
			require("lsp_signature").setup(opts)
		end,
	},
}
