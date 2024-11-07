-- ~/.config/nvim/lua/plugins/snakemake.lua

return {
  {
    "snakemake/snakemake", -- Snakemake 官方语法高亮插件
    ft = { "snakemake", "Snakefile", "*.smk" }, -- 关联 Snakemake 文件类型
    rtp = "misc/vim", -- 指定 Snakemake 的 Vim 语法文件路径
    config = function()
      -- 确保文件类型检测
      vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
        pattern = { "Snakefile", "*.smk" },
        callback = function()
          vim.bo.filetype = "snakemake"
        end,
      })

      -- 添加高亮文件路径到 runtimepath
      vim.opt.runtimepath:append("~/.local/share/nvim/lazy/snakemake/misc/vim")
    end,
  },
}
