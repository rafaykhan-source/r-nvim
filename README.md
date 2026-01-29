# My Neovim Configuration

I developed this configuration as I was watching through tjdevries's
[advent of neovim series](https://github.com/tjdevries/advent-of-nvim).

## Neovim Installation

```bash
npm i -g tree-sitter-cli
```

## LSP Setup Commands

```bash
uv tool install ruff
uv tool install ty
uv tool install rumdl

npm i -g svelte-language-server
npm i -g @tailwindcss/language-server
npm i -g @taplo/cli
npm i -g vscode-langservers-extracted
npm i -g typescript typescript-language-server
npm i -g bash-language-server

# install texlab
# install marksman
# install lua-language-server
```

## Conform Setup Commands

```bash
uv tool install ruff
uv tool install rumdl
uv tool install codespell

npm i -g @taplo/cli
npm i -g prettierd
npm i -g prettier

cargo install tex-fmt
cargo install stylua

# install shellcheck

```

## Todo

- [x] Rename plugin file names to match plugin being handles
- [x] Consolidate colorscheme plugins into a `colorscheme.lua` file
- [ ] Remove lspconfig and self-configure and add a `lsp` directory
- [ ] Add typst support
- [ ] Add GitSigns
- [ ] Add BigFile
- [ ] Add Neogen for autodocstring support

When nightly becomes stable:

- [ ] Switch to packer, create packer version
