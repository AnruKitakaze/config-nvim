# config-nvim

My personal NeoVim configuration not bloated with useless plugins. Only the ones
I really need and use.

## Plans

LSP stuff:

- [ ] Python
    - [x] Linter: `Ruff` (LSP)
    - [x] Formatter: `Ruff` (LSP)
    - [ ] Navigation: `Pyright`
    - [x] Autocompletion: `Pyright`

## Installation

1. Must install ripgrep for `telescope`'s live-grep:

    ```bash
    sudo apt install ripgrep
    ```

2. `telescope` will crash because of fzf-native isn't built. I have no idea
   right now how to make Lazy build it automatically, so here's a temporary fix:
   (GitHub Issue
   comment)[https://github.com/LazyVim/LazyVim/issues/2464#issuecomment-2185070943]
    > Run :lazy. Select "telescope-fzf-native.nvim" and press Enter Hit the Keys
    > g and b
3. You need `xclip`/`xsel`/`wl-clipboard` to use clipboard by default:

    ```bash
    sudo apt install xclip
    ```

### LSP stuff

#### Python

Install pyright and ruff-lsp

```bash
pip install ruff-lsp
pip install pyright
```
