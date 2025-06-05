return {
    "nvimtools/none-ls.nvim",
    config = function()
        local null_ls = require("null-ls")
        null_ls.setup({
            sources = {
                null_ls.builtins.formatting.stylua.with({
                    command = vim.fn.expand("~/.local/share/nvim/mason/bin/stylua"),
                    args = { "--config-path", "~/.config/nvim/.stylua.toml" },
                    -- args = { "--config-path", vim.fn.expand("~/.config/nvim/.stylua.toml") }, -- 显式指定路径
                }),
            },
        })

        vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
    end,
}
