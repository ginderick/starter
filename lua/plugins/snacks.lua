return {
  "folke/snacks.nvim",
  opts = {
    scroll = { enabled = false },
    dashboard = {
      sections = {
        { section = "header" },
        { section = "keys", gap = 1, padding = 1 },
        { section = "startup" },
      },
    },
  },
}
