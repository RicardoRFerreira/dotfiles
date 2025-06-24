return {
  "ibhagwan/fzf-lua",
  dependencies = { "echasnovski/mini.icons" },
  opts = {},
  keys = {
    { "<leader>ff", "<cmd>FzfLua files<CR>", desc="[F]ind [F]iles" },
    { "<leader>fb", "<cmd>FzfLua buffers<CR>", desc="[F]ind [B]uffers" },
    { "<leader>fg", "<cmd>FzfLua live_grep<CR>", desc="[F]ind using [G]rep" },
    { "<leader>fc", "<cmd>FzfLua files cwd=~/.config/nvim<CR>", desc="[F]ind in NeoVim [C]onfiguration" },
    { "<leader>f?", "<cmd>FzfLua builtin<CR>", desc="[F]ind [?] FzfLua commands" },
    { "<leader>fh", "<cmd>FzfLua helptags<CR>", desc="[F]ind in [H]elp" },
    { "<leader>fk", "<cmd>FzfLua keymaps<CR>", desc="[F]ind [K]eymaps" },
    { "<leader>ss", "<cmd>FzfLua lsp_live_workspace_symbols<CR>", desc="[S]earch Workspace [S]ymbols" },
  },
}
