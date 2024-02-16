return {
  -- the colorscheme should be available when starting Neovim
    {
        "folke/tokyonight.nvim",
        priority = 1000, -- make sure to load this before all the other start plugins
--        config = function()
--            -- load the colorscheme here
--            vim.cmd([[colorscheme tokyonight]])
--        end,
    },
    {
        "rose-pine/neovim", 
        name = "rose-pine",
--        config = function()
--            -- load the colorscheme here
--            vim.cmd([[colorscheme rose-pine]])
--        end,
    },
    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000,
--        config = function()
--            -- load the colorscheme here
--            vim.cmd([[colorscheme catppuccin]])
--        end,
    },
    { 
        "luisiacc/gruvbox-baby",
        priority = 1000,
        config = function()
            -- load the colorscheme here
            vim.cmd([[colorscheme gruvbox-baby]])
        end,
    },
    {
        "Mofiqul/vscode.nvim",
--        priority = 1000,
--        config = function()
--            vim.cmd([[colorscheme vscode]])
--        end,
    },

}
