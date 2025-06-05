return {
	"nvim-tree/nvim-tree.lua",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		require("nvim-tree").setup({
			-- 基础配置项
			sort_by = "case_sensitive",
			view = {
				width = 30,
				side = "left", -- 或 "right"
			},
			renderer = {
				group_empty = true,
			},
			filters = {
				dotfiles = false, -- 是否显示 . 开头的文件
			},
		})
	end,
}

