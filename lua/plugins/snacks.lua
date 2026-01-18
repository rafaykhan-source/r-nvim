return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  ---@type snacks.Config
  opts = {
    picker = {
      enabled = true,
      sources = {
        files = {
          hidden = true,
          ignored = true,
          exclude = {
            ".git/*",
            "node_modules/*",
            ".venv/*",
            "**/__pycache__/*",
            "build/*",
            ".DS_Store",
            ".rumdl_cache/*",
          },
        },
      },
    },

    dashboard = {
      enabled = true,
      preset = {
        header = [[
      ___           ___           ___         ___                 
     /  /\         /  /\         /  /\       /  /\          ___   
    /  /::\       /  /::\       /  /:/_     /  /::\        /__/|  
   /  /:/\:\     /  /:/\:\     /  /:/ /\   /  /:/\:\      |  |:|  
  /  /:/~/:/    /  /:/~/::\   /  /:/ /:/  /  /:/~/::\     |  |:|  
 /__/:/ /:/___ /__/:/ /:/\:\ /__/:/ /:/  /__/:/ /:/\:\  __|__|:|  
 \  \:\/:::::/ \  \:\/:/__\/ \  \:\/:/   \  \:\/:/__\/ /__/::::\  
  \  \::/~~~~   \  \::/       \  \::/     \  \::/         ~\~~\:\ 
   \  \:\        \  \:\        \  \:\      \  \:\           \  \:\
    \  \:\        \  \:\        \  \:\      \  \:\           \__\/
     \__\/         \__\/         \__\/       \__\/                
        ]],
        keys = {
          { icon = " ", key = "f", desc = "Find File", action = ":lua Snacks.dashboard.pick('files')" },
          { icon = " ", key = "/", desc = "Find Text", action = ":lua Snacks.dashboard.pick('live_grep')" },
          {
            icon = " ",
            key = "n",
            desc = "Config",
            action = ":lua Snacks.dashboard.pick('files', {cwd = vim.fn.stdpath('config')})",
          },
          { icon = "󰒲 ", key = "l", desc = "Lazy", action = ":Lazy", enabled = package.loaded.lazy ~= nil },
          { icon = " ", key = "q", desc = "Quit", action = ":qa" },
        },
      },
      sections = {
        { section = "header" },
        { icon = " ", title = "Keymaps", section = "keys", indent = 2, padding = 1 },
        {
          icon = " ",
          title = "Git Status",
          section = "terminal",
          enabled = function()
            return Snacks.git.get_root() ~= nil
          end,
          cmd = "git status --short --branch --renames",
          height = 5,
          padding = 1,
          ttl = 5 * 60,
          indent = 3,
        },
        { section = "startup" },
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
