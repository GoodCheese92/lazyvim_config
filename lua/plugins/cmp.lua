return {
  "hrsh7th/nvim-cmp",
  opts = function(_, opts)
    -- 기본 설정을 유지한 상태에서 window 옵션 수정
    opts.window = opts.window or {}
    opts.window.completion = require("cmp").config.window.bordered({
      border = "rounded",
      winhighlight = "Normal:Pmenu,FloatBorder:Pmenu,Search:None",
    })
    opts.window.documentation = require("cmp").config.window.bordered({
      border = "rounded",
      winhighlight = "Normal:NormalFloat,FloatBorder:FloatBorder,Search:None",
    })

    -- 필요에 따라 추가적으로 다른 설정을 덮어씁니다.
    opts.mapping = vim.tbl_extend("force", opts.mapping or {}, {
      ["<C-Space>"] = require("cmp").mapping.complete(),
      ["<CR>"] = require("cmp").mapping.confirm({ select = true }),
      ["<Tab>"] = require("cmp").mapping(function(fallback)
        if require("cmp").visible() then
          require("cmp").select_next_item()
        else
          fallback()
        end
      end, { "i", "s" }),
      ["<S-Tab>"] = require("cmp").mapping(function(fallback)
        if require("cmp").visible() then
          require("cmp").select_prev_item()
        else
          fallback()
        end
      end, { "i", "s" }),
    })
  end,
}
