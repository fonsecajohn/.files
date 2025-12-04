return {
  {
    "nvim-telescope/telescope.nvim",
    version = "0.1.8",
    dependencies = { "nvim-lua/plenary.nvim" },
  },
  {
    "theprimeagen/harpoon",
  },
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
  },
}
