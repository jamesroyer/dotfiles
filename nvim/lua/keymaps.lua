-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`

-- theprimeagen remapped "[d" to require("trouble").next({skip_groups = true, jump = true})

-- Diagnostic keymaps
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Go to previous [D]iagnostic message" })
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Go to next [D]iagnostic message" })
vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, { desc = "Show diagnostic [E]rror messages" })
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode.
vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })
-- vim.keymap.set("t", "<C-x>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

--local keymap = vim.keymap.set
--local opts = { noremap = true, silent = true }

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows.
--
--  See `:help wincmd` for a list of all window commands.
vim.keymap.set("n", "<C-h>", "<C-w>h", { noremap = true, silent = true, desc = "Window left" })
vim.keymap.set("n", "<C-j>", "<C-w>j", { noremap = true, silent = true, desc = "Window down" })
vim.keymap.set("n", "<C-k>", "<C-w>k", { noremap = true, silent = true, desc = "Window up" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { noremap = true, silent = true, desc = "Window right" })

-- TEMP
vim.keymap.set("n", "<leader>a", "<cmd>write<cr><cmd>source<cr>", { noremap = true, silent = true, desc = "Save and Source current file" })
