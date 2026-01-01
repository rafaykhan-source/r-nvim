return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  ---@type snacks.Config
  opts = {
    explorer = { enabled = true, trash = true },
    picker = {
      enabled = true,
      sources = {
        explorer = {
          auto_close = true,
          hidden = true,
          ignored = true,
          exclude = { ".git/*", "node_modules/*" },
        }
      }

    },
    lazygit = { enabled = true },
    gh = { enabled = true },
    image = { enabled = true },
    notifier = { enabled = true },
  },

  keys = {
    { "<leader>e",  function() Snacks.explorer() end,             desc = "[E]xplorer" },
    { "<leader>f",  function() Snacks.picker.files() end,         desc = "Search [F]iles" },
    { "<leader>/",  function() Snacks.picker.grep() end,          desc = "Search Grep" },
    { "<leader>b",  function() Snacks.picker.buffers() end,       desc = "[B]uffers" },
    { "<leader>h",  function() Snacks.picker.help() end,          desc = "[H]elp Pages" },
    { "<leader>n",  function() Snacks.picker.notifications() end, desc = "[N]otifications" },
    { "<leader>gl", function() Snacks.lazygit() end,              desc = "[G]it [L]azy" },
    { "<leader>gi", function() Snacks.picker.gh_issue() end,      desc = "[G]itHub [I]ssues (open)" },
    { "<leader>c",  function() Snacks.picker.colorschemes() end,  desc = "[C]olorschemes" },
    { "<leader>u",  function() Snacks.picker.undo() end,          desc = "[U]ndo" },
    { "<leader>r",  function() Snacks.picker.resume() end,        desc = "[R]esume" },
  },
}
