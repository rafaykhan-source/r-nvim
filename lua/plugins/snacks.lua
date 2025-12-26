return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  ---@type snacks.Config
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
    -- bigfile = { enabled = true },
    -- dashboard = { enabled = true },
    explorer = { enabled = true, replae_netrw = true, trash = true },
    lazygit = { enabled = true },
    -- indent = { enabled = true },
    -- input = { enabled = true },
    picker = { enabled = true },
    -- notifier = { enabled = true },
    -- quickfile = { enabled = true },
    -- scope = { enabled = true },
    -- scroll = { enabled = true },
    -- statuscolumn = { enabled = true },
    -- words = { enabled = true },
  },
  keys = {
    { "<leader>f",  function() Snacks.picker.smart() end,        desc = "Search [F]iles (Smart)" },
    { "<leader>/",  function() Snacks.picker.grep() end,         desc = "Search Grep" },
    { "<leader>b",  function() Snacks.picker.buffers() end,      desc = "[B]uffers" },
    { "<leader>c",  function() Snacks.picker.colorschemes() end, desc = "[C]olorschemes" },
    { "<leader>u",  function() Snacks.picker.undo() end,         desc = "[U]ndo" },
    { "<leader>gl", function() Snacks.lazygit() end,             desc = "[G]it [L]azy" },
    { "<leader>e",  function() Snacks.explorer() end,            desc = "[E]xplorer" },
    { "<leader>gi", function() Snacks.picker.gh_issue() end,     desc = "[G]itHub [I]ssues (open)" },
  },
}
