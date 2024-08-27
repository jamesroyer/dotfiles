--[[
return {
	'windwp/nvim-autopairs',
	event = 'InsertEnter',
	config = true
	-- use opts = {} for passing setup options
	-- this is equivalent to setup({}) function
}
--]]

local M = {
	'windwp/nvim-autopairs'
}

M.config = function()
	require("nvim-autopairs").setup {
		check_ts = true,
		disable_filetype = { "TelescopePrompt", "spectre_panel" }
	}
end

return M
