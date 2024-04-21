return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    version = false,
    opts = {
      ensure_installed = {
        "javascript",
        "lua",
        "rust",
        "typescript",
      },
      highlight = { enable = true },
      indent = { enable = true },
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "tsj",
          node_incremental = "tsj",
          scope_incremental = false,
          node_decremental = "tsk"
        },
      },
    },
    config = function(_, opts)
      require("nvim-treesitter.configs").setup(opts)
    end,
  },
}
