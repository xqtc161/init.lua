require("staline").setup({
	sections = {
		left = { ("▁"):rep(10) }, -- change thickness: "_", "▁", "▂", "▃", "▄", "▅", "▆", "▇", "█"
		mid = { "branch", "lsp_name" },
		right = { ("▁"):rep(10) },
	},
	mode_colors = {
		i = "#00ff6a",
		n = "#b50091",
		c = "#8fbf7f",
		v = "#00c3ff",
	},
    defaults = {
		true_colors = true,
		line_column = " [%l/%L] :%c  ",
	}
})
