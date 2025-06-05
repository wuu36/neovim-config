-- For conciseness
local opts = { noremap = true, silent = true }

-- Press jk fast to exit insert mode
vim.keymap.set('i', 'jk', '<ESC>', opts)
vim.keymap.set('i', 'kj', '<ESC>', opts)

-- Move text up and down
vim.keymap.set('v', '<A-j>', ':m .+1<CR>==', opts)
vim.keymap.set('v', '<A-k>', ':m .-2<CR>==', opts)


-- Neotree window toggle
vim.keymap.set("n", "<C-n>", ":Neotree toggle<CR>", opts)
