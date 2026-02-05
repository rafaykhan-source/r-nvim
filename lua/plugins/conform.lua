return {
  "stevearc/conform.nvim",
  event = { "BufWritePre" },
  cmd = { "ConformInfo" },
  -- This will provide type hinting with LuaLS
  ---@module "conform"
  ---@type conform.setupOpts
  opts = {
    -- Define your formatters
    formatters_by_ft = {
      lua = { "stylua" },
      python = { "ruff_organize_imports", "ruff_fix", "ruff_format" },
      markdown = { "rumdl" },
      latex = { "tex-fmt" },
      -- toml = { "taplo" },
      yaml = { "yamlfix" },
      bash = { "shellcheck" },
      javascript = { "prettierd", "prettier", stop_after_first = true },
      typescript = { "prettierd", "prettier", stop_after_first = true },
      svelte = { "prettierd", "prettier", stop_after_first = true },
    },
    -- Set up format-on-save
    format_on_save = { timeout_ms = 2500, lsp_format = "never" },
    notify_on_error = true,
  },
}
