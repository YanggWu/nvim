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


-- 加载主题
vim.o.background = "dark"             -- 设置背景（可选）
vim.cmd.colorscheme "onedark"
require("onedark").setup({
    term_colors = false,  -- 禁用终端颜色
})



vim.opt.guicursor = "n-v-c:block-Cursor/lCursor-blinkon0" ..
                    ",i-ci-ve:ver25-Cursor/lCursor-blinkwait200-blinkon100-blinkoff100" ..
                    ",r-cr:hor20" ..
                    ",o:hor50" ..
                    ",a:blinkon1"

vim.api.nvim_set_hl(0, "Cursor", { fg = "#FFFFFF", bg = "#FF0000" }) -- 正常模式光标
vim.api.nvim_set_hl(0, "lCursor", { fg = "#000000", bg = "#00FF00" }) -- 插入模式光标


vim.api.nvim_create_autocmd("ColorScheme", {
    pattern = "*",
    callback = function()
        vim.g.terminal_color_0  = '#000000'
        vim.g.terminal_color_1  = '#FF5555'
        vim.g.terminal_color_2  = '#50FA7B'
        vim.g.terminal_color_3  = '#F1FA8C'
        vim.g.terminal_color_4  = '#BD93F9'
        vim.g.terminal_color_5  = '#FF79C6'
        vim.g.terminal_color_6  = '#8BE9FD'
        vim.g.terminal_color_7  = '#BFBFBF'
        vim.g.terminal_color_8  = '#4D4D4D'
        vim.g.terminal_color_9  = '#FF6E67'
        vim.g.terminal_color_10 = '#5AF78E'
        vim.g.terminal_color_11 = '#F4F99D'
        vim.g.terminal_color_12 = '#CAA9FA'
        vim.g.terminal_color_13 = '#FF92D0'
        vim.g.terminal_color_14 = '#9AEDFE'
        vim.g.terminal_color_15 = '#FFFFFF'
    end,
})

vim.cmd([[
augroup NVIMRC
    autocmd!
    autocmd BufWritePost .vim.lua exec ":so %"
augroup END
]])

