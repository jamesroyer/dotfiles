return {
  "akinsho/bufferline.nvim",
  dependencies = "nvim-tree/nvim-web-devicons",
  keys = {
    { "<Tab>", "<cmd>BufferLineCycleNext<cr>", desc = "Goto next buffer" },
    { "<S-Tab>", "<cmd>BufferLineCyclePrev<cr>", desc = "Goto prev buffer" },
    { "<leader>bn", "<cmd>enew<cr>", desc = "New buffer" },
    { "<leader>bx", "<cmd>bdelete<cr>", desc = "Close buffer" },
  },
  lazy = false,
  config = function()
    require("bufferline").setup({
      options = {
        mode = "buffers",
        themable = true,
        always_show_bufferline = true,
      }
    })
  end,
}
