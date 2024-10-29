-- ~/.config/nvim/lua/config/lsp.lua

-- 配置 mason 的 UI 图标和界面
require("mason").setup({
  ui = {
      icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗"
      }
  }
})

-- mason-lspconfig 配置：确保安装了 `lua_ls` 和 `pyright`
require("mason-lspconfig").setup({
  -- 确保安装，根据需要填写
  ensure_installed = {
	"lua_ls",  -- Lua 语言服务器
    "pyright", -- Python 语言服务器
  },
})

-- 通过 nvim-cmp 获取 LSP 补全的能力设置 ---
local capabilities = require('cmp_nvim_lsp').default_capabilities()

-- 启用并配置 `lua_ls`（用于 Lua 开发）
require("lspconfig").lua_ls.setup {
  capabilities = capabilities,
}

-- 启用并配置 `pyright`（用于 Python 开发）
-- 配置 `pyright` 语言服务器
require("lspconfig").pyright.setup({
  capabilities = capabilities,
  filetypes = { "python", "snakemake" },  -- 在 `snakemake` 文件类型中启用

  on_attach = function(client, bufnr)
    if vim.bo.filetype == "snakemake" then
      -- 禁用诊断（代码检查）
      client.handlers["textDocument/publishDiagnostics"] = function() end
    end
    -- 您可以在此处添加其他 `on_attach` 配置
  end,
})

-- 启用 bashls 配置
require("lspconfig").bashls.setup({
	capabilities = capabilities, 
})
