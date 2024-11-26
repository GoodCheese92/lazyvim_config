return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    opts = {
      flavour = "mocha",
      transparent_background = true,
      default_integrations = true,
      integrations = {
        cmp = true,
        gitsigns = true,
        nvimtree = true,
        treesitter = true,
        notify = false,
      },
      color_overrides = {
        mocha = {
          lineNr = { fg = "#A6A6A6" },
          cursorLineNr = { fg = "#FFFFFF" },
          visual = { bg = "#FFFFD2", fg = "#008000" },
        },
      },
      custom_highlights = function(colors)
        return {
          -- 자동완성 팝업 창 배경 및 텍스트
          Pmenu = { bg = colors.surface0, fg = colors.text },
          PmenuSel = { bg = colors.blue, fg = colors.text }, -- 선택된 항목
          PmenuThumb = { bg = colors.overlay0 }, -- 스크롤바
          -- 문서 팝업 창
          NormalFloat = { bg = colors.surface0 },
          FloatBorder = { bg = colors.surface0, fg = colors.blue },
        }
      end,
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
}
