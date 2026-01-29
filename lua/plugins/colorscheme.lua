return {
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    enabled = true,
    opts = {},
    config = function()
      vim.cmd("colorscheme tokyonight-night")
    end,
  },
  {
    "rose-pine/neovim",
    name = "rose-pine",
    enabled = true,
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    enabled = true,
    opts = {
      auto_integrations = true,
      no_italic = true,
    },
  },
}
