return {
	"ThePrimeagen/harpoon",
	event = "VeryLazy",
	dependencies = {
		{ "nvim-lua/plenary.nvim" },
	},

	config = function()
		local keymap = vim.keymap.set
		local opts = { noremap = true, silent = true }

		--keymap("n", "<s-m>", "<cmd>lua require('harpoon').mark_file()<cr>", opts)
		--keymap("n", "<TAB>", "<cmd>lua require('harpoon.ui').toggle_quick_menu()<cr>", opts)
		keymap("n", "<leader>hh", "<cmd>lua require('harpoon.ui').toggle_quick_menu()<cr>", opts)
		--[[
    vim.api.nvim_create_autocmd({ "filetype" }, {
      pattern = "harpoon",
      callback = function()
        vim.cmd [[highlight link HarpoonBorder TelescopeBorder]--]
        vim.cmd [[setlocal nonumber]--]
        vim.cmd [[highlight HarpoonWindow guibg=#313132]--]
      end,
    })
    --]]
	end,

	mark_file = function()
		require("harpoon.mark").add_file()
		vim.notify("󱡅  marked file")
	end,
}
