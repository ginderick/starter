return {
  "folke/snacks.nvim",
  opts = {
    scroll = { enabled = false },
    dashboard = {
      sections = {
        { section = "header" },
        { section = "keys", gap = 1, padding = 1 },
        { section = "startup" },
        {
          section = "terminal",
          cmd = "pokemon-colorscripts -r --no-title; sleep .1",
          random = 900,
          pane = 2,
          indent = 4,
          height = 30,
        },
      },
    },
  },
}
