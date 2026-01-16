return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  ---@type snacks.Config
  opts = {
    picker = {
      enabled = true,
      sources = {
        explorer = {
          auto_close = true,
          hidden = true,
          ignored = true,
          exclude = { ".git/*", "node_modules/*", ".venv/*", "**/__pycache__/*", "build/*", ".DS_Store" },
        },
      },
    },
    lazygit = { enabled = true },
    gh = { enabled = true },
    image = { enabled = true },
    notifier = { enabled = true },
  },

  keys = {
    {
      "<leader>f",
      function()
        Snacks.picker.files()
      end,
      desc = "Search [F]iles",
    },
    {
      "<leader>/",
      function()
        Snacks.picker.grep()
      end,
      desc = "Search Grep",
    },
    {
      "<leader>b",
      function()
        Snacks.picker.buffers()
      end,
      desc = "[B]buffers",
    },
    {
      "<leader>h",
      function()
        Snacks.picker.help()
      end,
      desc = "[H]elp Pages",
    },
    {
      "<leader>n",
      function()
        Snacks.picker.notifications()
      end,
      desc = "[N]notifications",
    },
    {
      "<leader>gl",
      function()
        Snacks.lazygit()
      end,
      desc = "[G]it [L]azy",
    },
    {
      "<leader>gi",
      function()
        Snacks.picker.gh_issue()
      end,
      desc = "[G]itHub [I]ssues (open)",
    },
    {
      "<leader>c",
      function()
        Snacks.picker.colorschemes()
      end,
      desc = "[C]olorschemes",
    },
    {
      "<leader>u",
      function()
        Snacks.picker.undo()
      end,
      desc = "[U]ndo",
    },
    {
      "<leader>r",
      function()
        Snacks.picker.resume()
      end,
      desc = "[R]esume",
    },
    {
      "<leader>s",
      function()
        Snacks.picker.lsp_symbols()
      end,
      desc = "LSP Document Symbols",
    },
  },
}
