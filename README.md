# config-nvim

My personal NeoVim configuration. Only things I really need.

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
3. Make sure you have clipboard like `xclip`/`xsel`/`wl-clipboard` to use
   clipboard by default instead of buffers:

    ```bash
    sudo apt install xclip
    ```
