-- file for enabeling plugins, configuration of the plugins takes place in `configs` folder
return {
    -- treesitter
    {
        "nvim-treesitter/nvim-treesitter",
        event = { "BufReadPre", "BufNewFile" },
        config = function()
            require "configs.treesitter"
        end,
    },

    -- lsp
    {
        "neovim/nvim-lspconfig",
        event = { "BufReadPre", "BufNewFile" },
        config = function()
            require("nvchad.configs.lspconfig").defaults()
            require "configs.lspconfig"
        end,
    },

    {
        -- this will install stuff from configs/lspconfig.lua
        "williamboman/mason-lspconfig.nvim",
        event = "VeryLazy",
        dependencies = { "nvim-lspconfig" },
        config = function()
            require "configs.mason-lspconfig"
        end,
    },

    -- custom linter
    -- {
    --     "mfussenegger/nvim-lint",
    --     event = { "BufReadPre", "BufNewFile" },
    --     config = function()
    --         require "configs.lint"
    --     end,
    -- },
    --
    -- {
    --     "rshkarin/mason-nvim-lint",
    --     event = "VeryLazy",
    --     dependencies = { "nvim-lint" },
    --     config = function()
    --         require "configs.mason-lint"
    --     end,
    -- },

    -- format and style
    {
        "stevearc/conform.nvim",
        -- event = 'BufWritePre', -- uncomment for format on save
        opts = require "configs.conform",
    },

    {
        "zapling/mason-conform.nvim",
        event = "VeryLazy",
        dependencies = { "conform.nvim" },
        config = function()
            require "configs.mason-conform"
        end,
    },

    -- test new blink
    -- { import = "nvchad.blink.lazyspec" },
}
