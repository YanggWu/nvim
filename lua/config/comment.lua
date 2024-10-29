-- ~/.config/nvim/lua/config/comment.lua

-- 安全加载 Comment 模块
local status_ok, comment = pcall(require, "Comment")
if not status_ok then
  return
end

-- 启动插件
comment.setup()
