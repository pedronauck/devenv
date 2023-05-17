return {
	{
		"williamboman/mason.nvim",
		opts = {
			ensure_installed = {
				"stylua",
				"shellcheck",
				"shfmt",
				"flake8",
				"prettier",
				"prettierd",
				"rustfmt",
				"shfmt",
				"stylua",
				"yamlfmt",
				"codelldb",
			},
		},
	},
	{
		"neovim/nvim-lspconfig",
		---@class PluginLspOpts
		opts = {
			---@type lspconfig.options
			servers = {
				prismals = {},
			},
		},
	},
}
