function set_colorscheme(color)
	color = color or "kanagawa-wave"
	vim.cmd.colorscheme(color)
end

set_colorscheme()
