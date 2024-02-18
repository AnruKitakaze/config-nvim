# config-nvim
My personal NeoVim configuration not bloated with useless plugins. Only
the ones I really need and use.

## Plans:

LSP stuff:
- [ ] Python
    - [x] Linter: `Ruff` (LSP)
    - [x] Formatter: `Ruff` (LSP)
    - [ ] Navigation: `Pyright`
        - There's a problem with jumping to fixture definition in tests,
        everything else seems okay for now.
        - There's a problem with Django ORM typing.
    - [x] Autocompletion: `Pyright`

- [ ] Mojo:
    - [x] Using `mojo` with `lspconfig` + `mojo-lsp-server`, slow but working.
    - [ ] Remove manual mojo filetype detection after this functionality
    will be added in NeoVim by default.
    - [ ] Replace `lspconfig` config for `mason-lspconfig` insdead when
    it'll become available.

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
