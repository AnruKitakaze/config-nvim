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

1. Must install ripgrep for `telescope`'s live-grep:
```
sudo apt install ripgrep
```
2. `telescope` will crash because of fzf-native isn't built.
I have no idea right now how to make Lazy build it automatically, so here's a
temporary fix:
(GitHub Issue comment:)[https://github.com/LazyVim/LazyVim/issues/2464#issuecomment-2185070943]
> Run :lazy.
> Select "telescope-fzf-native.nvim" and press Enter
> Hit the Keys g and b
3. You need `xclip`/`xsel`/`wl-clipboard` to use clipboard by default:
```
sudo apt install xclip
```

### LSP stuff

#### Python
Install pyright and ruff-lsp

```
pip install ruff-lsp
pip install pyright
```
