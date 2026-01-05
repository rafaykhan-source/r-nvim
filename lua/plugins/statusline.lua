return {
  {
    "nvim-mini/mini.statusline",
    version = "*",
    config = function()
      require("mini.statusline").setup()
    end,
  },
  { "nvim-tree/nvim-web-devicons" },
  { "nvim-mini/mini.icons", version = "*" },
}
