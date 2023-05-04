function set_colorscheme(color)
	color = color or "kanagawa-dragon"
	vim.cmd.colorscheme(color)
end

set_colorscheme()
