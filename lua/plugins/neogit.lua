return {
  {
    "NeogitOrg/neogit",
    dependencies = {
      "nvim-lua/plenary.nvim", -- required
      "sindrets/diffview.nvim", -- optional - Diff integration
      -- Only one of these is needed.
      "folke/snacks.nvim", -- optional
    },
    opts = {
      -- Use "kitty" graph style for gitgraph.nvim rendering with circles
      graph_style = "kitty",
    },
    keys = {
      { "<leader>gs", "<cmd>Neogit<cr>", desc = "Neogit Status" },
      { "<leader>gl", "<cmd>Neogit log<cr>", desc = "Neogit Log" },
    },
  },
}
