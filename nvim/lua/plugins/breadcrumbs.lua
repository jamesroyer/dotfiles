-- Displays "breadcrumbs" at the top of the window.
-- Alternative: SmiteshP/nvim-navic
return {
  "LunarVim/breadcrumbs.nvim",
  event = "VeryLazy",
  enabled = false, -- Don't like it? Uncomment this line.
  config = function()
    require("breadcrumbs").setup()
  end,
}
