return {
	"nvim-tree/nvim-tree.lua",
	dependencies = {
		"nvim-tree/nvim-web-devicons", -- Fancy icon support
	},
	cmd = { "NvimTreeToggle", "NvimTreeFocus" },
	config = function()
		require("nvim-tree").setup({
			view = {
				side = "right",
				width = 54,
				centralize_selection = true,
			},
			actions = {
				open_file = {
					window_picker = {
						enable = false,
					},
				},
			},
			update_cwd = true,
			update_focused_file = {
				enable = true,
				update_cwd = true,
			},
		})
	end,
}
