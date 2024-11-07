-- ~/.config/nvim/lua/plugins/autopairs.lua
return {
  "windwp/nvim-autopairs",
  event = "InsertEnter",
  config = function()
    require("nvim-autopairs").setup({
      check_ts = true, -- 启用 Treesitter 支持，提高括号匹配的准确性
      fast_wrap = {
        map = "<M-e>", -- Alt+e 快速包裹选中的文本
        chars = { "{", "[", "(", '"', "'" },
        pattern = [=[[%'%"%)%>%]%)%}%,]]=],
        end_key = "$",
        keys = "qwertyuiopzxcvbnmasdfghjkl",
        check_comma = true,
        highlight = "Search",
        highlight_grey = "Comment",
      },
    })

    -- 将 autopairs 与 cmp 集成，用于自动补全函数时自动添加括号
    local cmp_autopairs = require("nvim-autopairs.completion.cmp")
    local cmp = require("cmp")
    cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())
  end,
}
