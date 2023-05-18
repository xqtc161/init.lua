if vim.g.neovide then
	vim.g.neovide_cursor_vfx_mode = "railgun"

    vim.g.neovide_profiler = false 
	vim.g.neovide_hide_mouse_when_typing = true 
	-- Fullscreen keymapping
	vim.keymap.set("n", "<leader>FF", function()
		if vim.g.neovide_fullscreen then
			vim.g.neovide_fullscreen = false
		else
			vim.g.neovide_fullscreen = true
		end
	end)
end
