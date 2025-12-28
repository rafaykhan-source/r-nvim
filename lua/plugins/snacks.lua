return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  ---@type snacks.Config
  opts = {
    picker = { enabled = true },
    explorer = { enabled = true, replae_netrw = true, trash = true },
    lazygit = { enabled = true },
    gh = { enabled = true },
    image = { enabled = true },
  },

  keys = {
    { "<leader>e",  function() Snacks.explorer() end,                     desc = "[E]xplorer" },
    { "<leader>f",  function() Snacks.picker.files() end,                 desc = "Search [F]iles" },
    { "<leader>/",  function() Snacks.picker.grep() end,                  desc = "Search Grep" },
    { "<leader>b",  function() Snacks.picker.buffers() end,               desc = "[B]uffers" },
    { "<leader>h",  function() Snacks.picker.help() end,                  desc = "[H]elp Pages" },
    { "<leader>gl", function() Snacks.lazygit() end,                      desc = "[G]it [L]azy" },
    { "<leader>gi", function() Snacks.picker.gh_issue() end,              desc = "[G]itHub [I]ssues (open)" },
    { "<leader>c",  function() Snacks.picker.colorschemes() end,          desc = "[C]olorschemes" },
    { "<leader>u",  function() Snacks.picker.undo() end,                  desc = "[U]ndo" },
  },
}
