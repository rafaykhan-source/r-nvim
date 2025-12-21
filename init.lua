vim.o.number = true
vim.o.relativenumber = true
vim.o.shiftwidth = 4
vim.o.splitbelow = true
vim.o.splitright = true
vim.o.clipboard = "unnamedplus"

require('config.lazy')

-- :so % (source current file)
vim.keymap.set("n", "<leader>s", ":source %<CR>")
vim.keymap.set("v", "<leader>x", ":lua<CR>")
vim.keymap.set("n", "<leader>t", ":terminal<CR>")
vim.keymap.set("n", "<leader>\\", ":vsplit<CR>")
vim.keymap.set("n", "<leader>l", ":Lazy<CR>")
vim.keymap.set("n", "<leader>w", function() vim.lsp.buf.format() end)
vim.keymap.set("n", "<C-k>", "<C-w><up>")
vim.keymap.set("n", "<C-j>", "<C-w><down>")
vim.keymap.set("n", "<C-h>", "<C-w><left>")
vim.keymap.set("n", "<C-l>", "<C-w><right>")

vim.api.nvim_create_autocmd('TextYankPost', {
    desc = 'Highlight Yanked Text',
    group = vim.api.nvim_create_augroup('highlight', { clear = true }),
    callback = function()
        vim.hl.on_yank()
    end,
})

-- vim.pack.add({
-- 'https://github.com/tpope/vim-fugitive'
-- })
