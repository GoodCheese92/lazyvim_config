local cmp = require("cmp")

cmp.setup({
  mapping = {
    -- 기본 키맵
    ["<C-Space>"] = cmp.mapping.complete(), -- 자동완성 창 열기
    ["<CR>"] = cmp.mapping.confirm({ select = true }), -- 선택 항목 확인
    ["<Esc>"] = cmp.mapping.close(), -- 자동완성 창 닫기

    -- Tab과 Shift+Tab 탐색
    ["<Tab>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_next_item() -- 자동완성 목록에서 다음 항목 선택
      elseif require("luasnip").expand_or_jumpable() then
        require("luasnip").expand_or_jump() -- 스니펫 확장
      else
        fallback() -- 기본 Tab 동작 유지
      end
    end, { "i", "s" }),

    ["<S-Tab>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_prev_item() -- 자동완성 목록에서 이전 항목 선택
      elseif require("luasnip").jumpable(-1) then
        require("luasnip").jump(-1) -- 스니펫 뒤로 이동
      else
        fallback() -- 기본 Shift+Tab 동작 유지
      end
    end, { "i", "s" }),
  },
})
