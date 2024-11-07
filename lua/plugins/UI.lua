return {
  "nvim-lualine/lualine.nvim", -- 指定 lualine 插件
  opts = function(_, opts)
    -- 确保 opts.sections 存在
    opts.sections = opts.sections or {}

    -- 确保 lualine_x 部分存在
    opts.sections.lualine_x = opts.sections.lualine_x or {}

    -- 在 lualine_x 中添加文件类型显示
    table.insert(opts.sections.lualine_x, {
      "filetype",
      icon_only = false, -- 是否只显示图标
      separator = " | ", -- 分隔符
      padding = { left = 1, right = 1 }, -- 内边距
    })
  end,
}
