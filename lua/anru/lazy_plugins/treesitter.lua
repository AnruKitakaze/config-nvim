return {
	{
		"nvim-treesitter/nvim-treesitter",
        opts = function()
            require('nvim-treesitter').setup({
                ensure_installed = { "lua", "vimdoc", "query", "python", "go" },
            })
        end
	},
}
