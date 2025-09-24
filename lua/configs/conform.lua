local options = {
    formatters_by_ft = {
        lua = { "stylua" },
        css = { "prettier" },
        html = { "prettier" },
        bash = { "shfmt" },
        c = { "clang-format" },
        cpp = { "clang-format" },
        xml = { "lemminx" },
        python = {"isort", "black" },
    },

    formatters = {
        -- C
        ["clang-format"] = {
            prepend_args = {
                "-style={ \
                IndentWidth: 4, \
                TabWidth: 4, \
                UseTab: Never, \
                AccessModifierOffset: 0}"
            }
        },
        -- Python
        black = {
            prepend_args = {
                "--fast",
                "--line-length",
                "100",
            },
        },
        isort = {
            prepend_args = {
                "--profile",
                "black",
            },
        },
        -- ["xmlformatter"] = {
        --     prepend_args = {
        --         "--indent",
        --         "4",
        --         "--selfclose",
        --         "--correct",
        --     }
        -- }
    }

    -- format_on_save = {
    --   -- These options will be passed to conform.format()
    --   timeout_ms = 500,
    --   lsp_fallback = true,
    -- },
}

return options
