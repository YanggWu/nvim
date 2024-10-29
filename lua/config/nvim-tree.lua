-- ~/.config/nvim/lua/config/nvim-tree.lua
require("nvim-tree").setup({
  view = {
    width = 25,
    side = "left",
  },
  renderer = {
    icons = {
      show = {
        file = true,
        folder = true,
        folder_arrow = true,
        git = true,
      },
    },
  },
  filters = {
    dotfiles = true,	-- 不显示隐藏文件
  },
})

