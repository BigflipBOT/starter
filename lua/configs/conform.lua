local options = {
    formatters_by_ft = {
        lua = { "stylua" },
        css = { "prettier" },
        html = { "prettier" },
        bash = { "shfmt" },
        c = { "clang-format" },
        cpp = { "clang-format" },
        xml = { "lemminx" }
    },

    formatters = {
        ["clang-format"] = {
            prepend_args = {
                "-style={ \
                IndentWidth: 4, \
                TabWidth: 4, \
                UseTab: Never, \
                AccessModifierOffset: 0}"
            }
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
