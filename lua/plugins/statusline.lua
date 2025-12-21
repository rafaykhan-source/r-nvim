return {
  'nvim-mini/mini.statusline',
  version = false,
  enabled = true,
  config = function()
    require('mini.statusline').setup()
  end
}
