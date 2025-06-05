return {
  'goolord/alpha-nvim',
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },

  config = function()
    local alpha = require 'alpha'
    local dashboard = require 'alpha.themes.startify'

    dashboard.section.header.val = {
      [[                                                    ]],
      [[ ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ]],
      [[ ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ]],
      [[ ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ]],
      [[ ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ]],
      [[ ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ]],
      [[ ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ]],
      [[                                                    ]],
    }

    alpha.setup(dashboard.opts)
    -- 自定义布局将内容放在右侧
    -- dashboard.opts.layout = {
    --   { type = "padding", val = vim.fn.max({ 2, vim.o.lines - 12 }) }, -- 顶部填充
    --   {
    --     type = "group",
    --     val = {
    --       { type = "padding", val = vim.fn.max({ 0, vim.o.columns - 60 }) }, -- 左侧填充
    --       dashboard.section.header,
    --     },
    --     opts = { position = "center" },
    --   },
    --   { type = "padding", val = 2 }, -- 底部填充
    -- }
    --
    -- alpha.setup(dashboard.opts)
  end,
}
