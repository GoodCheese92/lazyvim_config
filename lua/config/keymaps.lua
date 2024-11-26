-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = vim.keymap.set
local cmp = require("cmp")

-- windows
map("n", "\\", "<C-W>s", { desc = "Split Window Below", remap = true })
map("n", "|", "<C-W>v", { desc = "Split Window Right", remap = true })

-- cmp
cmp.setup({
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
