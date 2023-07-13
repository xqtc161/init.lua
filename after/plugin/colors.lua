function set_colorscheme(color)
	color = color or "doom-one"
	vim.cmd.colorscheme(color)
end

set_colorscheme()
