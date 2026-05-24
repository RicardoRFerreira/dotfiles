vim.pack.add({ "https://github.com/ibhagwan/fzf-lua" })

require("fzf-lua").setup()

vim.keymap.set("n", "<leader>ff", "<cmd>FzfLua files<CR>", { desc = "[F]ind [F]iles" })
vim.keymap.set("n", "<leader>fb", "<cmd>FzfLua buffers<CR>", { desc = "[F]ind [B]uffers" })
vim.keymap.set("n", "<leader>fg", "<cmd>FzfLua live_grep<CR>", { desc = "[F]ind using [G]rep" })
vim.keymap.set("n", "<leader>fc", function () require("fzf-lua").files({ cwd = vim.fn.stdpath("config") }) end, { desc = "[F]ind in NeoVim [C]onfiguration" })
vim.keymap.set("n", "<leader>f?", "<cmd>FzfLua builtin<CR>", { desc = "[F]ind [?] FzfLua commands" })
vim.keymap.set("n", "<leader>fh", "<cmd>FzfLua helptags<CR>", { desc = "[F]ind in [H]elp" })
vim.keymap.set("n", "<leader>fk", "<cmd>FzfLua keymaps<CR>", { desc = "[F]ind [K]eymaps" })
vim.keymap.set(
    "n",
    "<leader>ss",
    "<cmd>FzfLua lsp_live_workspace_symbols<CR>",
    { desc = "[S]earch Workspace [S]ymbols" }
)
