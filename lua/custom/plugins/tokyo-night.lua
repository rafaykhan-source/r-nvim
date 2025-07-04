return {
  'folke/tokyonight.nvim',
  priority = 1000, -- Make sure to load this before all the other start plugins.
  init = function()
    vim.cmd.colorscheme 'tokyonight-night'
    -- You can configure highlights by doing something like:
    vim.api.nvim_set_hl(0, 'LineNrAbove', { fg = '#999898' })
    vim.api.nvim_set_hl(0, 'LineNrBelow', { fg = '#999898' })
  end,
}
