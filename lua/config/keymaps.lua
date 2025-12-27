-- :so % (source current file)
vim.keymap.set("n", "<C-k>", "<C-w><up>")
vim.keymap.set("n", "<C-j>", "<C-w><down>")
vim.keymap.set("n", "<C-h>", "<C-w><left>")
vim.keymap.set("n", "<C-l>", "<C-w><right>")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<Esc>", ":nohlsearch<CR>")

vim.keymap.set("n", "<leader>s", ":source %<CR>", { desc = "[S]ource Buffer" })
vim.keymap.set("n", "<leader>l", ":Lazy update<CR>", { desc = "[L]azy Update" })
vim.keymap.set("n", "<leader>d",
  function()
    vim.diagnostic.setloclist()
  end,
  { desc = "[D]iagnostic List" }
)
vim.keymap.set("n", "<leader>\\",
  function()
    vim.cmd.vnew()
  end,
  { desc = "New Split" }
)
vim.keymap.set("n", "<leader>w",
  function()
    vim.lsp.buf.format()
    vim.cmd.update()
  end,
  { desc = "[W]rite and Format file" }
)

vim.keymap.set("n", "<leader>t",
  function()
    vim.cmd.vnew()
    vim.cmd.terminal()
  end,
  { desc = "[T]erminal" }
)
