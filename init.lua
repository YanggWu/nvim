-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- 确保 Snakemake 文件类型检测
vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
  pattern = { "Snakefile", "*.smk" },
  callback = function()
    vim.bo.filetype = "snakemake"
  end,
})

-- 手动加载 Snakemake 的语法文件

vim.opt.runtimepath:append("~/.local/share/nvim/lazy/snakemake/misc/vim")
