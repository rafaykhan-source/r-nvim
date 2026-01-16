return {
  {
    "nvim-mini/mini.statusline",
    version = "*",
    config = function()
      require("mini.statusline").setup()
    end,
  },
  { "nvim-mini/mini.icons", version = "*" },
  -- { "nvim-tree/nvim-web-devicons" },
}
