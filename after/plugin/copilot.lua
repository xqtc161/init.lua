
function isUbuntu()
	local handle = io.popen("uname -a") -- Execute the 'uname -a' command
	local result = handle:read("*a") -- Read the output of the command
	handle:close() -- Close the handle

	return string.find(result, "Ubuntu") ~= nil
end
function setNodeBinPath()
    if isUbuntu() then
    	print("Redefining node path to nvm install")
        return vim.fn.expand("$HOME") .. "/.nvm/versions/node/v16.20.0/bin/node"
    else
        return "node"
    end
end
require("copilot").setup({
	suggestions = {
		enabled = false,
	},
	panel = {
		enabled = false,
	},
    copilot_node_command = setNodeBinPath()
})
require("copilot_cmp").setup()
