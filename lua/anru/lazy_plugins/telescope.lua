return {
    {
        'nvim-telescope/telescope-fzf-native.nvim',
        build = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build'
    },
    {
        -- TODO: read docs to customize
        'nvim-telescope/telescope.nvim',
        branch = '0.1.x',
        dependencies = {
            'nvim-lua/plenary.nvim',
            'nvim-telescope/telescope-fzf-native.nvim',
        },

        opts = function()
            require("telescope").setup({
                extensions = {
                fzf = {
                  fuzzy = true,                    -- false will only do exact matching
                  override_generic_sorter = true,  -- override the generic sorter
                  override_file_sorter = true,     -- override the file sorter
                  case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
                                                   -- the default case_mode is "smart_case"
                }
              }
            })
            require('telescope').load_extension('fzf')

            local builtin = require("telescope.builtin")
            vim.keymap.set(
                'n', '<leader>ff', builtin.find_files,
                { desc = "Telescope: Find Files" }
            )
            vim.keymap.set(
                'n', '<leader>fg', builtin.git_files,
                { desc = "Telescope: Git Files" }
            )
            vim.keymap.set(
                'n', '<leader>fs', function()
                    builtin.grep_string({ search = vim.fn.input("Live Grep > ") })
                end,
                { desc = "Telescope: Live Grep Search" }
            )
            vim.keymap.set(
                'n', '<leader>fh', builtin.help_tags,
                { desc = "Telescope: Help Tags" }
            )
        end
    },
}
