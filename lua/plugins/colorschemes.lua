return {
  -- the colorscheme should be available when starting Neovim
    {
        "folke/tokyonight.nvim",
        lazy = false, -- make sure we load this during startup if it is your main colorscheme
        priority = 1000, -- make sure to load this before all the other start plugins
    },
    {
        "rose-pine/neovim", 
        name = "rose-pine",
    },
    {
        "catppuccin/nvim", 
        name = "catppuccin", 
        priority = 1000 
    },
    { 
        "luisiacc/gruvbox-baby",
        priority = 1000,
        config = function()
            -- load the colorscheme here
            vim.cmd([[colorscheme gruvbox-baby]])
        end,
    },
}
