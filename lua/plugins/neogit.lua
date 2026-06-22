return {
  "NeogitOrg/neogit",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "sindrets/diffview.nvim", -- optional - Diff integration
    "nvim-telescope/telescope.nvim", -- optional
  },
  opts = {
    auto_refresh = true,
  },
  config = function()
    require("neogit").setup({
      graph_style = "kitty",
    })
  end,
}
