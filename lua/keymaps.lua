-- 设置 Leader 键
vim.g.mapleader = ';'  -- 将 ';' 设置为 Leader 键

local keymap = vim.keymap

-- ---------- 插入模式 ---------- ---
keymap.set("i", "jk", "<ESC>")	-- 插入模式按 jk 退出到正常模式

-- ---------- 命令行模式 ------------
keymap.set("c", "jk", "<ESC>")
-- ---------- 视觉模式 ---------- ---
-- 单行或多行移动
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- ---------- 正常模式 ---------- ---
-- 空格键映射为 ':'
keymap.set("n", "<Space>", ":")
--keymap.set("n", "<leader>h", ':bprevious<CR>')
--keymap.set("n", "<leader>l", ':bnext<CR>')

-- 窗口
keymap.set("n", "<leader>sv", "<C-w>v") -- 水平新增窗口 
keymap.set("n", "<leader>sh", "<C-w>s") -- 垂直新增窗口
-- 关闭当前缓冲区
keymap.set("n", "<leader>d", ":Bdelete<CR>")
-- 切换窗口
keymap.set("n", "<Tab>h", ":bp<CR>") 	-- tab + h
keymap.set("n", "<Tab>l", ":bn<CR>")

-- 取消高亮
keymap.set("n", "<leader>nh", ":nohl<CR>")

-- ---------- 插件 ---------- ---
-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")

