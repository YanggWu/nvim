local opt = vim.opt

-- 行号
opt.relativenumber = true
opt.number = true

-- 缩进
opt.autoindent = true                -- 自动缩进
opt.smartindent = true               -- 智能缩进
opt.tabstop = 4                      -- Tab 显示为 4 个空格
opt.shiftwidth = 4                   -- 自动缩进使用 4 个空格

-- 行列高亮
opt.cursorline = true                 -- 高亮当前行
-- opt.cursorcolumn = true            -- 如果需要高亮当前列，取消注释

-- 启用鼠标
opt.mouse:append("a")

-- 系统剪贴板
opt.clipboard:append("unnamedplus")

-- 搜索
opt.ignorecase = true                -- 搜索时忽略大小写
opt.smartcase = true                 -- 搜索时智能区分大小写

-- 外观
opt.signcolumn = "yes"               -- 始终显示左侧符号栏
opt.swapfile = false                 -- 不使用 swap 文件
opt.termguicolors = true             -- 启用真彩色
-- 设置光标在不同模式下的形态
vim.opt.guicursor = "n-v-c:block-Cursor/lCursor-blinkon0" ..
                    ",i-ci-ve:ver25-Cursor/lCursor-blinkwait200-blinkon100-blinkoff100" ..
                    ",r-cr:hor20" ..
                    ",o:hor50" ..
                    ",a:blinkon1"
-- 设置光标颜色（通过自定义highlight）
vim.api.nvim_set_hl(0, "Cursor", { fg = "#000000", bg = "#00FF00" })       -- 正常模式下的光标颜色
vim.api.nvim_set_hl(0, "lCursor", { fg = "#000000", bg = "#FF4500" })      -- 插入模式下的光标颜色


-- 外观配色主题方案 --
vim.cmd("colorscheme everforest")      -- 设置配色方案
vim.o.background = "light"			   -- 使用浅色背景

-- 设置配色方案
vim.cmd("colorscheme everforest")      -- 设置配色方案
vim.o.background = "dark"             -- 使用浅色背景

-- 仅在亮色主题下应用自定义高亮颜色
if vim.o.background == "light" then
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

