return {
  "nvim-treesitter/nvim-treesitter",
  branch = 'master',
  lazy = false,
  build = ":TSUpdate",
  config = function()
    require 'nvim-treesitter.configs'.setup {
      -- A list of parser names, or "all" (the listed parsers MUST always be installed)
      ensure_installed = { "lua", "vim", "vimdoc", "markdown", "markdown_inline", "python", "csv", "dockerfile", "ssh_config", "toml", "tmux", "yaml", "json", "bash"},
    }
  end,
}
