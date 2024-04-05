-- Move faster with "f"/"F" keys by highlighting unique letters on a line.
return {
  "jinh0/eyeliner.nvim",
  event = "VeryLazy",
  enabled = false,
  config = function()
    require("eyeliner").setup({
      hightlight_on_key = true,
    })
  end,
}
