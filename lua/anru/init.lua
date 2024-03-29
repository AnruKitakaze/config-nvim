require("anru.set")
-- NOTE: important to set leader key before plugins are required
require("anru.remap")

require("anru.init_lazy")

local augroup = vim.api.nvim_create_augroup
local AnruGroup = augroup('Anru', {})

-- Remove trailing space on save
local autocmd = vim.api.nvim_create_autocmd
autocmd({"BufWritePre"}, {
    group = AnruGroup,
    pattern = "*",
    command = [[%s/\s\+$//e]],
})

autocmd('LspAttach', {
    group = AnruGroup,
    callback = function(e)
        local opts = { buffer = e.buf }
        vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
        vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
        vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
        vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
        vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
        vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
        vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
        vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
        vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
        vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
    end
})

-- Highlight on yank
local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
  callback = function()
    vim.highlight.on_yank()
  end,
  group = highlight_group,
  pattern = '*',
})

-- Enable hlsearch when entering the command line
vim.api.nvim_create_autocmd("CmdlineEnter", {
  pattern = "/,\\?",
  callback = function() vim.o.hlsearch = true end
})

-- Disable hlsearch when leaving the command line
vim.api.nvim_create_autocmd("CmdlineLeave", {
  pattern = "/,\\?",
  callback = function() vim.o.hlsearch = false end
})

-- TODO: Delete this after mojo filetype detection will be added by default
-- For now mojo filetype cannot be detected by neovim, so I do it manually
local mojoFileTypeGroup = vim.api.nvim_create_augroup('MojoFileType', { clear = true })

vim.api.nvim_create_autocmd({"BufRead","BufNewFile"}, {
    pattern = { '*.mojo' },
    callback = function()
        vim.bo.filetype = 'mojo'
    end,
    group = mojoFileTypeGroup,
})

-- TODO: Find better place for this one
-- Enable telescope fzf native, if installed
pcall(require('telescope').load_extension, 'fzf')

