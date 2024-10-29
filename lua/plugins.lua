-- 自动安装packer
local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

-- 保存此文件自动更新安装软件
-- 注意PackerCompile改成了PackerSync
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

return require('packer').startup(function(use)
  	-- Packer 可以管理自身
	use 'wbthomason/packer.nvim'

	-- === 常用插件 ===
	use {
    'nvim-lualine/lualine.nvim',  							   -- 状态栏
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }  -- 状态栏图标
    }

	use {
    'nvim-tree/nvim-tree.lua',         				-- 文件浏览器（替代 NERDTree）
    requires = { 'nvim-tree/nvim-web-devicons' }    -- 文件图标
    }
	use "nvim-tree/nvim-web-devicons"
	use 'lukas-reineke/indent-blankline.nvim' 		-- 显示缩进线

	use "christoomey/vim-tmux-navigator" 	-- 用ctl-hjkl来定位窗口
	use "nvim-treesitter/nvim-treesitter" 	-- 语法高亮	
	use "p00f/nvim-ts-rainbow" 				-- 配合treesitter，不同括号颜色区分

	-- === 配色方案 ===
	use 'sainnhe/everforest'
	

	use {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",  -- 这个相当于mason.nvim和lspconfig的桥梁
    "neovim/nvim-lspconfig"
  	}

	-- === LSP 和自动补全 ===
	use "hrsh7th/nvim-cmp"				-- 自动补全插件
  	use "hrsh7th/cmp-nvim-lsp"			-- LSP 源 for nvim-cmp
    use "L3MON4D3/LuaSnip" 				-- snippets引擎，不装这个自动补全会出问题
    use "saadparwaiz1/cmp_luasnip"		-- 代码片段源 for nvim-cmp
    use "rafamadriz/friendly-snippets"
    use "hrsh7th/cmp-path" 				-- 文件路径

	use "ibab/vim-snakemake"
	use "numToStr/Comment.nvim" -- gcc和gc注释
  	use "windwp/nvim-autopairs" -- 自动补全括号

  	use "akinsho/bufferline.nvim" -- buffer分割线
  	use "lewis6991/gitsigns.nvim" -- 左则git提示
	use 'moll/vim-bbye'
    use {
  	  'nvim-telescope/telescope.nvim', tag = '0.1.1',  -- 文件检索
   	  requires = { {'nvim-lua/plenary.nvim'} }
    }

	if packer_bootstrap then
    	require('packer').sync()
  	end
end)
