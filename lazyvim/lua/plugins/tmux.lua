return {
	{
		"aserowy/tmux.nvim",
		config = function()
			return require("tmux").setup({
				copy_sync = {
					redirect_to_clipboard = true,
				},
				navigation = {
					enable_default_keybindings = false,
					persist_zoom = true,
				},
				resize = {
					enable_default_keybindings = false,
					resize_step_x = 10,
					resize_step_y = 10,
				},
			})
		end,
	},
}
