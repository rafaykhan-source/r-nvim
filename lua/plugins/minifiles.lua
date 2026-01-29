return {
  "nvim-mini/mini.files",
  version = false,
  opts = {
    windows = {
      preview = true,
      width_preview = 75,
    },
    options = {
      use_as_default_explorer = true,
    },
    mappings = {
      synchronize = "w",
      go_out = "",
      go_out_plus = "h",
      go_in = "",
      go_in_plus = "l",
    },
  },
  keys = {
    {
      "<leader>e",
      function()
        MiniFiles.open()
      end,
      desc = "Explorer",
    },
  },
  {
    {
      "nvim-mini/mini.statusline",
      version = "*",
      config = function()
        require("mini.statusline").setup()
      end,
    },
    { "nvim-mini/mini.icons", version = "*" },
    -- { "nvim-tree/nvim-web-devicons" },
  },
}
