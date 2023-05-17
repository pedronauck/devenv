return {
	{
		"nvim-neo-tree/neo-tree.nvim",
		opts = {
			filesystem = {
				bind_to_cwd = false,
				follow_current_file = false,
				use_libuv_file_watcher = true,
				group_empty_dirs = false,
			},
			default_component_configs = {
				indent = {
					with_markers = false,
					with_expanders = true,
				},
				modified = {
					symbol = " ",
					highlight = "NeoTreeModified",
				},
				icon = {
					folder_closed = "",
					folder_open = "",
					folder_empty = "",
					folder_empty_open = "",
				},
				git_status = {
					symbols = {
						-- Change type
						added = "",
						deleted = "",
						modified = "",
						renamed = "",
						-- Status type
						untracked = "",
						ignored = "",
						unstaged = "",
						staged = "",
						conflict = "",
					},
				},
			},
			window = {
				position = "left",
				width = 35,
				mappings = {
					["o"] = "open",
					["<space>"] = "none",
				},
			},
		},
	},
}
