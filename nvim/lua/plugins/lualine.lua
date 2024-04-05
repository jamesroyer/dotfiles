return {
	"nvim-lualine/lualine.nvim",
	dependencies = {
		{ "nvim-tree/nvim-web-devicons", opt = true },
	},
	config = function()
		require("lualine").setup({
			options = {
				theme = "auto",
			},
			sections = {
				lualine_c = {
					{
						"filename",
						path = 3, -- Abs. path, w/ tilde as home dir.
					},
				},
			},
		})
	end,
	extensions = { "quickfix", "man", "fugitive" },
}
