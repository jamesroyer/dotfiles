-- NOTE: Plugins can also be configured to run Lua code when they are loaded.
--
-- This is often very useful to both group configuration, as well as handle
-- lazy loading plugins that don't need to be loaded immediately at startup.
--
-- For example, in the following configuration, we use:
--  event = 'VimEnter'
--
-- which loads which-key before all the UI elements are loaded. Events can be
-- normal autocommands events (`:help autocmd-events`).
--
-- Then, because we use the `config` key, the configuration only runs
-- after the plugin has been loaded:
--  config = function() ... end

return { -- Useful plugin to show you pending keybinds.
	"folke/which-key.nvim",
	event = "VimEnter", -- Sets the loading event to 'VimEnter'
	opts = {
		spec = {
			{ "<leader>b" , group = "[B]uffer"    }, { "<leader>b_", hidden = true },
			{ "<leader>c" , group = "[C]ode"      }, { "<leader>c_", hidden = true },
			{ "<leader>d" , group = "[D]ocument"  }, { "<leader>d_", hidden = true },
			{ "<leader>r" , group = "[R]ename"    }, { "<leader>r_", hidden = true },
			{ "<leader>s" , group = "[S]earch"    }, { "<leader>s_", hidden = true },
			{ "<leader>t" , group = "[T]erminal"  }, { "<leader>t_", hidden = true },
			{ "<leader>w" , group = "[W]orkspace" }, { "<leader>w_", hidden = true },
		},
	},
}

--[[
return { -- Useful plugin to show you pending keybinds.
	"folke/which-key.nvim",
	event = "VimEnter", -- Sets the loading event to 'VimEnter'
	config = function() -- This is the function that runs, AFTER loading
		require("which-key").setup()

		-- Document existing key chains
		require("which-key").register({
			["<leader>b"] = { name = "[B]uffer", _ = "which_key_ignore" },
			["<leader>c"] = { name = "[C]ode", _ = "which_key_ignore" },
			["<leader>d"] = { name = "[D]ocument", _ = "which_key_ignore" },
			["<leader>r"] = { name = "[R]ename", _ = "which_key_ignore" },
			["<leader>s"] = { name = "[S]earch", _ = "which_key_ignore" },
			["<leader>t"] = { name = "[T]erminal", _ = "which_key_ignore" },
			["<leader>w"] = { name = "[W]orkspace", _ = "which_key_ignore" },
		})
	end,
}
--]]

--[[
return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 300
  end,
  -- Using `opts={}` will show all key bindings.
  opts = {},
}
--]]
