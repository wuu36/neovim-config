require 'core.options' -- Load general options
require 'core.keymaps'
-- 启用懒加载（按需加载插件）
vim.g.mapleader = " " -- 设置 Leader 键为空格

-- 初始化 lazy.nvim 插件管理器
local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system {
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- 使用稳定版
        lazypath,
    }
end

vim.opt.rtp:prepend(lazypath)

require("lazy").setup {
    -- 插件列表见下文
    require "plugins.catppuccin",
    -- require "plugins.nord",
    require "plugins.treesitter",
    -- require "plugins.nvim-tree",
    -- require("plugins.lsp-config"),
    require "plugins.none-ls",
    -- require("plugins.completions"),
    require "plugins.lsp",
    require "plugins.autocompletion",
    require "plugins.telescope",
    require "plugins.bufferline",
    require "plugins.neo-tree",
    require "plugins.autopair",
    require "plugins.lualine",
    require "plugins.comment",
    require "plugins.indent-blankline",
    require "plugins.which-key",
    require "plugins.aerial",
    require "plugins.alpha",
    require "plugins.gitsigns",
    require "plugins.vim-fugitive",
    require "plugins.lazygit",
}

-- 基础配置（显示行号旁图标和悬浮提示）
vim.diagnostic.config {
    virtual_text = true,      -- 行内显示错误简码
    signs = true,             -- 行号旁显示图标
    underline = true,         -- 错误代码下方划线
    update_in_insert = false, -- 避免输入时频繁刷新
    severity_sort = true,     -- 按错误等级排序
    float = {                 -- 悬浮提示配置
        source = "always",    -- 显示错误来源（如pylint）
        border = "rounded",
        focusable = false,
    },
}
