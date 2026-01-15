return {
  "nvim-telescope/telescope-bibtex.nvim",
  dependencies = {
    "nvim-telescope/telescope.nvim",
  },
  config = function()
    require("telescope").load_extension("bibtex")

    -- Set up keybinding for citation picker
    vim.keymap.set("n", "<leader>lc", "<cmd>Telescope bibtex<cr>", { desc = "Search citations" })
    vim.keymap.set("i", "<C-c>", "<cmd>Telescope bibtex<cr>", { desc = "Insert citation" })
  end,
}
