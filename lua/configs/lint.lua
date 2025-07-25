local lint = require("lint")

lint.linters_by_ft = {
    -- lua = { "luacheck", "shellcheck" },
    lua = { "shellcheck", "stylua" },
}

-- lint.linters.luacheck.args = {
--     unpack(lint.linters.luacheck.args),
--     "--globals",
--     -- "love",
--     "vim",
-- }

local lint_augroup = vim.api.nvim_create_augroup("lint", { clear = true })

vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
    group = lint_augroup,
    callback = function()
        lint.try_lint()
    end,
})
