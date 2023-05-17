return {
	{
		"akinsho/bufferline.nvim",
		enabled = true,
		event = "VeryLazy",
		lazy = true,
		version = "*",
		dependencies = "nvim-tree/nvim-web-devicons",
		keys = {
			{ "<leader>bp", "<Cmd>BufferLineTogglePin<CR>", desc = "Toggle pin" },
			{
				"<leader>bP",
				"<Cmd>BufferLineGroupClose ungrouped<CR>",
				desc = "Delete non-pinned buffers",
			},
		},
		opts = {
			options = {
				mode = "buffers",
				numbers = "none",
				close_command = function(bufnr) -- can be a string | function, see "Mouse actions"
					vim.api.nvim_buf_delete(bufnr, { force = true })
				end,
				right_mouse_command = "", -- right click does nothing
				-- left_mouse_command = "",
				color_icons = true,
				max_name_length = 18,
				max_prefix_length = 15, -- prefix used when a buffer is de-duplicated
				truncate_names = true, -- whether or not tab names should be truncated
				tab_size = 18,
				show_tab_indicators = true,
				separator_style = "thin", -- "slant" | "padded_slant" | "slope" | "thick" | "thin"
				diagnostics = "nvim_lsp",
				show_close_icon = false,
				always_show_bufferline = true,
				hover = {
					enabled = false,
					delay = 200,
					reveal = { "close" },
				},
				diagnostics_indicator = function(_, _, diag)
					local icons = require("config.icons").diagnostics
					local ret = (diag.error and icons.Error .. diag.error .. " " or "")
						.. (diag.warning and icons.Warn .. diag.warning or "")
					return vim.trim(ret)
				end,
				offsets = {
					{
						filetype = "neo-tree",
						text = "Neo-tree",
						highlight = "Directory",
						text_align = "left",
					},
				},
			},
		},
	},
}
