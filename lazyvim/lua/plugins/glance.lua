return {
	"dnlhc/glance.nvim",
	event = "VeryLazy",
	config = function()
		require("glance").setup({
			border = {
				enable = true,
			},
			list = {
				position = "left",
			},
		})
	end,
}
