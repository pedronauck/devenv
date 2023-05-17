return {
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			"simrat39/rust-tools.nvim",
			"rust-lang/rust.vim",
		},
		opts = {
			servers = {
				rust_analyzer = {
					settings = {
						["rust-analyzer"] = {
							cargo = { allFeatures = true },
							checkOnSave = {
								command = "cargo clippy",
								extraArgs = { "--no-deps" },
							},
						},
					},
				},
			},
			setup = {
				rust_analyzer = function(_, opts)
					local lsp_utils = require("lazyvim.util")
					lsp_utils.on_attach(function(client, buffer)
            -- stylua: ignore
            if client.name == "rust_analyzer" then
              vim.keymap.set("n", "<leader>cR", "<cmd>RustRunnables<cr>", { buffer = buffer, desc = "Runnables" })
              vim.keymap.set("n", "<leader>cl", function() vim.lsp.codelens.run() end, { buffer = buffer, desc = "Code Lens" })
            end
					end)

					require("rust-tools").setup({
						tools = {
							hover_actions = { border = "solid" },
							on_initialized = function()
								vim.api.nvim_create_autocmd(
									{ "BufWritePost", "BufEnter", "CursorHold", "InsertLeave" },
									{
										pattern = { "*.rs" },
										callback = function()
											vim.lsp.codelens.refresh()
										end,
									}
								)
							end,
						},
						server = opts,
					})
					return true
				end,
			},
		},
	},
	{
		"saecki/crates.nvim",
		lazy = true,
		tag = "v0.3.0",
		requires = { "nvim-lua/plenary.nvim" },
		config = function()
			require("crates").setup()
		end,
	},
}
