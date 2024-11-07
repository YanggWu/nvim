return {
  {
    "stevearc/conform.nvim",
    opts = function(_, opts)
      -- 为 Snakemake 文件添加 snakefmt 格式化支持
      opts.formatters_by_ft = opts.formatters_by_ft or {}
      opts.formatters_by_ft.snakemake = { "snakefmt" }

      -- 确保格式化时使用 snakefmt
      opts.formatters = opts.formatters or {}
      opts.formatters.snakefmt = {
        command = "snakefmt", -- 确保使用 snakefmt
        args = {}, -- 如果需要额外的参数可以在此配置
        stdin = true, -- 通过 stdin 格式化
      }
    end,
  },
}
