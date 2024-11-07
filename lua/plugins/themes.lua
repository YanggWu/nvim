-- 主题配置文件
return {
  -- Everforest 主题
  { "sainnhe/everforest" },

  -- Tokyo Night 主题
  { "folke/tokyonight.nvim" },

  -- One Dark 主题
  { "navarasu/onedark.nvim" },

  -- 默认主题配置
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "onedark", -- 设置默认主题
    },
  },

  -- =============针对每个主题的独立配置========= --
  {
    "folke/tokyonight.nvim",
    opts = {
      style = "night", -- 可选：'storm', 'night', 'moon', 'day'
    },
  },
  {
    "sainnhe/everforest",
    opts = function()
      vim.g.everforest_background = "soft"
      vim.g.everforest_enable_italic = 1
    end,
  },
  {
    "navarasu/onedark.nvim",
    opts = function()
      require("onedark").setup({
        style = "dark", -- 主题风格：'dark', 'darker', 'cool', 'deep', 'warm', 'warmer', 'light'
      })
    end,
  },
}
