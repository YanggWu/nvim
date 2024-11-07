-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local function remap_ctrl_to_cmd()
  -- 获取所有模式下的快捷键
  local keymaps = vim.api.nvim_get_keymap("")

  for _, map in ipairs(keymaps) do
    local lhs = map.lhs
    if lhs:match("^<C%-") then
      -- 将 <C- 替换为 <D-
      local new_lhs = lhs:gsub("<C%-", "<D-")
      vim.keymap.set(map.mode, new_lhs, map.rhs, {
        desc = map.desc,
        silent = map.silent,
        noremap = map.noremap,
      })
    end
  end
end

-- 延迟执行以确保所有快捷键加载完毕
vim.api.nvim_create_autocmd("User", {
  pattern = "VeryLazy",
  callback = function()
    remap_ctrl_to_cmd()
  end,
})
