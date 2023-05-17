local Util = require("lazyvim.util")
return {
	{
		"telescope.nvim",
		dependencies = {
			"nvim-telescope/telescope-file-browser.nvim",
		},
		keys = {
			{
				"<leader>fh",
				Util.telescope("files", { hidden = true }),
				desc = "Find Files (root dir, including hidden)",
			},
			{
				"<leader>fH",
				Util.telescope("files", { cwd = false, hidden = true }),
				desc = "Find Files (cwd, including hidden)",
			},
			{
				"<leader>fB",
				":Telescope file_browser path=%:p:h=%:p:h<cr>",
				desc = "Browse Files",
			},
		},
		config = function()
			require("telescope").load_extension("file_browser")
		end,
	},
}
