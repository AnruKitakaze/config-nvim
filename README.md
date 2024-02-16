# config-nvim
My personal NeoVim configuration

## Plans:

- [x] Core
    - [x] `lazy` package manager
    - [x] `mason`
    - [x] `treesitter`
    - [x] `telescope`
    - [x] `fugitive` + `gitsigns`
- [x] LSP:
    - [x] `lspconfig` + `mason-lspconfig`
    - [x] `cmp` for autocompletion (feat. `LuaSnip`)

LSP stuff:
- [ ] Python
    - [x] Linter: `Ruff` (LSP)
    - [x] Formatter: `Ruff` (LSP)
    - [ ] Navigation: `Pyright`
        - There's a problem with jumping to fixture definition in tests,
        everything else seems okay for now.
    - [x] Autocompletion: `Pyright`

- [x] Lua:
    - Base functionality via `lua_ls`. Navigation and autocompletion seems
    fine to me for now.

## Installation
Must install ripgrep for `telescope`'s live-grep:

```
sudo nala install ripgrep
```

### LSP stuff

#### Python
Install pyright and ruff-lsp

```
pip install ruff-lsp
pip install pyright
```
