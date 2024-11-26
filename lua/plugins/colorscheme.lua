return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    opts = {
      flavour = "mocha",
      transparent_background = true,
      color_overrides = {
        mocha = {
          lineNr = { fg = "#A6A6A6" },
          cursorLineNr = { fg = "#FFFFFF" },
          visual = { bg = "#FFFFD2", fg = "#008000" },
        },
      },
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
}
