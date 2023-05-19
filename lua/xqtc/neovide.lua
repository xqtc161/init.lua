if vim.g.neovide then
	vim.g.neovide_cursor_vfx_mode = "pixiedust"
    
    
    vim.g.neovide_cursor_vfx_particle_density = 30.0
    vim.g.neovide_transparency = 0.8

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
