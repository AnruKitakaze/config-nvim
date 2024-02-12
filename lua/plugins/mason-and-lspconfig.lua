return {
    {
      "williamboman/mason.nvim",
      dependencies = {
        "WhoIsSethDaniel/mason-tool-installer.nvim",
      },
      config = function()
        local mason = require("mason")
        local mason_tool_installer = require("mason-tool-installer")

        mason.setup({
          ui = {
            icons = {
              package_installed = "✓",
              package_pending = "➜",
              package_uninstalled = "✗",
            },
          },
        })

        mason_tool_installer.setup({
          ensure_installed = {
            "stylua", -- Ensure StyLua is installed
            "lua-language-server",
            -- Add other tools here
          },
        })
      end,
    },
    {
        "williamboman/mason-lspconfig.nvim",
    },
    {
        "neovim/nvim-lspconfig",
    },
}
