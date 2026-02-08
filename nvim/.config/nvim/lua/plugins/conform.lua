return {
    "stevearc/conform.nvim",
    opts = {
        formatters_by_ft = {
            lua = {
                "stylua",
            },
            -- You can customize some of the format options for the filetype (:help conform.format)
            terraform = { lsp_format = "fallback" },
            -- Conform will run the first available formatter
            javascript = { "prettierd", "prettier", stop_after_first = true },
            cs = { "csharpier" },
        },
        -- Set this to change the default values when calling conform.format()
        -- This will also affect the default values for format_on_save/format_after_save
        default_format_opts = {
            lsp_format = "fallback",
        },
        -- format_on_save = {
        -- -- These options will be passed to conform.format()
        -- timeout_ms = 500,
        -- lsp_format = "fallback",
        -- },
        formatters = {
            stylua = {
                prepend_args = {
                    "--indent-type",
                    "Spaces",
                },
            },
        },
    },
}
