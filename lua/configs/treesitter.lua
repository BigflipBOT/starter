local options = {
    ensure_installed = {
        "bash",
        "c",
        "cpp",
        -- "fish",
        "jq",
        "lua",
        "luadoc",
        "make",
        "markdown",
        "printf",
        "rust",
        "sway",
        "toml",
        "vim",
        "vimdoc",
        "yaml",
    },

    highlight = {
        enable = true,
        use_languagetree = true,
    },

    indent = { enable = true },
}

require("nvim-treesitter.configs").setup(options)

-- :lua print(require"nvim-treesitter.parsers".get_buf_lang())
-- :set filetype?
-- :set filetype=xxxx
