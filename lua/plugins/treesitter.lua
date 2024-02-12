return {
	{
		"nvim-treesitter/nvim-treesitter",
        config = function()
            require('nvim-treesitter').setup({
                ensure_installed = { "lua", "vimdoc", "query", "python", "go" },
            })
        end
	},
}
