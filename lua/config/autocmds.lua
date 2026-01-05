vim.api.nvim_create_autocmd("TextYankPost", {
  desc = "Highlight Yanked Text",
  group = vim.api.nvim_create_augroup("highlight", { clear = true }),
  callback = function()
    vim.hl.on_yank()
  end,
})
