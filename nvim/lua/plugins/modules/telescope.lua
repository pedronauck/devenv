local Util = require("utils")

return {
	-- fuzzy finder
	"nvim-telescope/telescope.nvim",
	cmd = "Telescope",
	version = false, -- telescope did only one release, so use HEAD for now
	lazy = true,
	dependencies = {
		"nvim-lua/plenary.nvim",
		"jvgrootveld/telescope-zoxide",
		"nvim-tree/nvim-web-devicons",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
		"nvim-telescope/telescope-ui-select.nvim",
		-- "telescope-dap.nvim",
	},
	keys = {
		{ "<leader>/", Util.telescope("live_grep"), desc = "Grep (root dir)" },
		{ "<leader>:", "<cmd>Telescope command_history<cr>", desc = "Command History" },
		{ "<leader><space>", Util.telescope("files"), desc = "Find Files (root dir)" },
		-- find
		{ "<leader>fb", "<cmd>Telescope buffers<cr>", desc = "Buffers" },
		{ "<leader>ff", Util.telescope("files"), desc = "Find Files (root dir)" },
		{ "<leader>fF", Util.telescope("files", { cwd = false }), desc = "Find Files (cwd)" },
		{ "<leader>fr", "<cmd>Telescope oldfiles<cr>", desc = "Recent" },
		{
			"<leader>fR",
			Util.telescope("oldfiles", { cwd = vim.loop.cwd() }),
			desc = "Recent (cwd)",
		},
		-- git
		{ "<leader>gc", "<cmd>Telescope git_commits<CR>", desc = "commits" },
		{ "<leader>gs", "<cmd>Telescope git_status<CR>", desc = "status" },
		-- search
		{ "<leader>sa", "<cmd>Telescope autocommands<cr>", desc = "Auto Commands" },
		{ "<leader>sb", "<cmd>Telescope current_buffer_fuzzy_find<cr>", desc = "Buffer" },
		{ "<leader>sc", "<cmd>Telescope command_history<cr>", desc = "Command History" },
		{ "<leader>sC", "<cmd>Telescope commands<cr>", desc = "Commands" },
		{ "<leader>sd", "<cmd>Telescope diagnostics bufnr=0<cr>", desc = "Document diagnostics" },
		{ "<leader>sD", "<cmd>Telescope diagnostics<cr>", desc = "Workspace diagnostics" },
		{ "<leader>sg", Util.telescope("live_grep"), desc = "Grep (root dir)" },
		{ "<leader>sG", Util.telescope("live_grep", { cwd = false }), desc = "Grep (cwd)" },
		{ "<leader>sh", "<cmd>Telescope help_tags<cr>", desc = "Help Pages" },
		{ "<leader>sH", "<cmd>Telescope highlights<cr>", desc = "Search Highlight Groups" },
		{ "<leader>sk", "<cmd>Telescope keymaps<cr>", desc = "Key Maps" },
		{ "<leader>sM", "<cmd>Telescope man_pages<cr>", desc = "Man Pages" },
		{ "<leader>sm", "<cmd>Telescope marks<cr>", desc = "Jump to Mark" },
		{ "<leader>so", "<cmd>Telescope vim_options<cr>", desc = "Options" },
		{ "<leader>sR", "<cmd>Telescope resume<cr>", desc = "Resume" },
		{ "<leader>sw", Util.telescope("grep_string"), desc = "Word (root dir)" },
		{ "<leader>sW", Util.telescope("grep_string", { cwd = false }), desc = "Word (cwd)" },
		{
			"<leader>uC",
			Util.telescope("colorscheme", { enable_preview = true }),
			desc = "Colorscheme with preview",
		},
		{
			"<leader>ss",
			Util.telescope("lsp_document_symbols", {
				symbols = {
					"Class",
					"Function",
					"Method",
					"Constructor",
					"Interface",
					"Module",
					"Struct",
					"Trait",
					"Field",
					"Property",
				},
			}),
			desc = "Goto Symbol",
		},
		{
			"<leader>sS",
			Util.telescope("lsp_dynamic_workspace_symbols", {
				symbols = {
					"Class",
					"Function",
					"Method",
					"Constructor",
					"Interface",
					"Module",
					"Struct",
					"Trait",
					"Field",
					"Property",
				},
			}),
			desc = "Goto Symbol (Workspace)",
		},
	},
	opts = {
		defaults = {
			prompt_prefix = " ",
			selection_caret = " ",
			-- theme = "dropdown",
			previewer = true,
			file_ignore_patterns = { "node_modules", "package-lock.json" },
			initial_mode = "insert",
			select_strategy = "reset",
			sorting_strategy = "ascending",
			layout_strategy = "horizontal",
			layout_config = {
				width = 0.75,
				height = 0.75,
				prompt_position = "top",
				preview_cutoff = 120,
			},
			path_display = { "smart" },
			winblend = 0,
			border = {},
			borderchars = nil,
			color_devicons = true,
			set_env = { ["COLORTERM"] = "truecolor" },
			vimgrep_arguments = {
				"rg",
				"--color=never",
				"--no-heading",
				"--with-filename",
				"--line-number",
				"--column",
				"--smart-case",
				"--hidden",
				"--glob=!.git/",
			},
			mappings = {
				i = {
					["<c-t>"] = function(...)
						return require("trouble.providers.telescope").open_with_trouble(...)
					end,
					["<a-t>"] = function(...)
						return require("trouble.providers.telescope").open_selected_with_trouble(
							...
						)
					end,
					["<a-i>"] = function()
						Util.telescope("find_files", { no_ignore = true })()
					end,
					["<a-h>"] = function()
						Util.telescope("find_files", { hidden = true })()
					end,
					["<C-Down>"] = function(...)
						return require("telescope.actions").cycle_history_next(...)
					end,
					["<C-Up>"] = function(...)
						return require("telescope.actions").cycle_history_prev(...)
					end,
					["<C-f>"] = function(...)
						return require("telescope.actions").preview_scrolling_down(...)
					end,
					["<C-b>"] = function(...)
						return require("telescope.actions").preview_scrolling_up(...)
					end,
				},
				n = {
					["q"] = function(...)
						return require("telescope.actions").close(...)
					end,
				},
			},
		},
	},
	config = function(_, opts)
		local telescope = require("telescope")
		telescope.setup({
			defaults = opts.defaults,
			pickers = {
				find_files = {
					hidden = true,
					previewer = false,
					layout_config = {
						horizontal = {
							width = 0.5,
							height = 0.4,
							preview_width = 0.6,
						},
					},
				},
				git_files = {
					hidden = true,
					previewer = false,
					layout_config = {
						horizontal = {
							width = 0.5,
							height = 0.4,
							preview_width = 0.6,
						},
					},
				},
				live_grep = {
					--@usage don't include the filename in the search results
					only_sort_text = true,
					previewer = true,
					layout_config = {
						horizontal = {
							width = 0.9,
							height = 0.75,
							preview_width = 0.6,
						},
					},
				},
				grep_string = {
					--@usage don't include the filename in the search results
					only_sort_text = true,
					previewer = true,
					layout_config = {
						horizontal = {
							width = 0.9,
							height = 0.75,
							preview_width = 0.6,
						},
					},
				},
				buffers = {
					-- initial_mode = "normal",
					previewer = false,
					layout_config = {
						horizontal = {
							width = 0.5,
							height = 0.4,
							preview_width = 0.6,
						},
					},
				},
				lsp_references = {
					show_line = false,
					layout_config = {
						horizontal = {
							width = 0.9,
							height = 0.75,
							preview_width = 0.6,
						},
					},
				},
				treesitter = {
					show_line = false,
					sorting_strategy = nil,
					layout_config = {
						horizontal = {
							width = 0.9,
							height = 0.75,
							preview_width = 0.6,
						},
					},
					symbols = {
						"class",
						"function",
						"method",
						"interface",
						"type",
						"const",
						"variable",
						"property",
						"constructor",
						"module",
						"struct",
						"trait",
						"field",
					},
				},
			},
			extensions = {
				fzf = {
					fuzzy = true, -- false will only do exact matching
					override_generic_sorter = true, -- override the generic sorter
					override_file_sorter = true, -- override the file sorter
					case_mode = "smart_case", -- or "ignore_case" or "respect_case"
				},
				["ui-select"] = {
					require("telescope.themes").get_dropdown({
						previewer = false,
						initial_mode = "normal",
						sorting_strategy = "ascending",
						layout_strategy = "horizontal",
						layout_config = {
							horizontal = {
								width = 0.5,
								height = 0.4,
								preview_width = 0.6,
							},
						},
					}),
				},
			},
		})
		telescope.load_extension("fzf")
		telescope.load_extension("ui-select")
		telescope.load_extension("refactoring")
		-- telescope.load_extension("dap")
		telescope.load_extension("zoxide")
	end,
}
