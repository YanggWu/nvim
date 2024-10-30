opt.termguicolors = true             -- 启用真彩色

-- ========================== --
-- ======= 加载主题 ========= --
-- ========================== --

vim.o.background = "light"   -- 设置背景（可选）

-- 1. tokyonight
vim.cmd("colorscheme tokyonight-day")
require("tokyonight").setup({
  style = "day",         -- 可选：storm, night, day, moon
  transparent = false,     -- 背景透明
  terminal_colors = true,  -- 为终端设置配色
})

-- 2. onedark
-- require('onedark').load()

-- 3. everforest
-- vim.cmd("colorscheme everforest")  	 

-- =========================== --
-- ======= 光标相关设置 ====== --
-- =========================== --

-- 1. 设置光标在不同模式下的形态 (光标闪烁)
vim.opt.guicursor = "n-v-c:block-Cursor/lCursor-blinkon0" ..
                    ",i-ci-ve:ver25-Cursor/lCursor-blinkwait200-blinkon100-blinkoff100" ..
                    ",r-cr:hor20" ..
                    ",o:hor50" ..
                    ",a:blinkon1"


-- 根据背景颜色设置自定义高亮（可选）
-- 如何是特定主题并且是浅色，则应用自定义背景颜色
if vim.g.colors_name == "everforest" and vim.o.background == "light" then
  -- 自定义背景和高亮颜色
  vim.api.nvim_set_hl(0, "Normal", { bg = "#D5DDE0" })
  vim.api.nvim_set_hl(0, "CursorLine", { bg = "#D5E5E6" })
  vim.api.nvim_set_hl(0, "NormalNC", { bg = "#D5DDE0" })

  -- 设置文件栏的背景颜色
  vim.api.nvim_set_hl(0, "NvimTreeNormal", { bg = "#D5DDE0" })
  vim.api.nvim_set_hl(0, "NvimTreeVertSplit", { bg = "#D5DDE0", fg = "#D5DDE0" })
  vim.api.nvim_set_hl(0, "NvimTreeEndOfBuffer", { bg = "#D5DDE0" })

  -- 设置顶部状态栏的背景颜色
  vim.api.nvim_set_hl(0, "NvimTreeStatusLine", { bg = "#D5E5D0" })
  vim.api.nvim_set_hl(0, "NvimTreeStatusLineNC", { bg = "#D5E5D0" })

  -- 设置选中行的高亮颜色
  vim.api.nvim_set_hl(0, "NvimTreeCursorLine", { bg = "#D5E5E6" })

  -- 设置文件路径（根文件夹路径）的颜色
  vim.api.nvim_set_hl(0, "NvimTreeRootFolder", { fg = "#5F5AFF", bold = true })
end

