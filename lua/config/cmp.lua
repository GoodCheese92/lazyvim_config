local cmp = require("cmp")

-- cmp
cmp.setup({
  window = {
    completion = cmp.config.window.bordered({
      border = "rounded", -- 창 테두리 스타일: none, single, double, rounded, solid, shadow
      winhighlight = "Normal:Pmenu,FloatBorder:Pmenu,Search:None",
    }),
    documentation = cmp.config.window.bordered({
      border = "rounded",
      winhighlight = "Normal:NormalFloat,FloatBorder:FloatBorder,Search:None",
    }),
  },
  mapping = {
    -- 자동완성 창 열기
    ["<C-Space>"] = cmp.mapping.complete(),

    -- 자동완성 항목 선택
    ["<CR>"] = cmp.mapping.confirm({ select = true }),

    -- Tab으로 다음 항목 선택
    ["<Tab>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      else
        fallback() -- 기본 Tab 동작
      end
    end, { "i", "s" }),

    -- Shift+Tab으로 이전 항목 선택
    ["<S-Tab>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_prev_item()
      else
        fallback() -- 기본 Shift+Tab 동작
      end
    end, { "i", "s" }),

    -- 자동완성 창 닫기
    ["<Esc>"] = cmp.mapping.close(),
  },
})
