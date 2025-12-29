return {
  "nvim-treesitter/nvim-treesitter",
  lazy = false,
  build = ":TSUpdate",
  config = function()
    require 'nvim-treesitter'.install { "lua", "vim", "vimdoc", "markdown", "markdown_inline", "python", "csv", "dockerfile", "ssh_config", "toml", "tmux", "yaml", "json", "bash"}
  end,
}
