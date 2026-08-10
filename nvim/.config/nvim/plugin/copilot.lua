vim.pack.add({ "https://github.com/zbirenbaum/copilot.lua" })

require("copilot").setup({
    suggestion = {
        enabled = false,
        auto_trigger = true,
        accept = false,
    },
    panel = {
        enabled = false,
    },
    filetypes = {
        ["*"] = true,
    },
})

vim.keymap.set("i", "<Tab>", function()
    if require("copilot.suggestion").is_visible() then
        require("copilot.suggestion").accept()
    else
        vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<Tab>", true, false, true), "n", false)
    end
end, {
    silent = true,
})
