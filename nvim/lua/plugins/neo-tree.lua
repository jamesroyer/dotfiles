return {
  "nvim-neo-tree/neo-tree.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  event = "VeryLazy",
  keys = {
    { "<C-n>", "<cmd>Neotree focus filesystem reveal toggle left<cr>", desc = "Toggle neotree" },
    { "<leader>e", "<cmd>Neotree action=focus source=filesystem reveal position=left<cr>", desc = "Focus neotree" },
  }
}
