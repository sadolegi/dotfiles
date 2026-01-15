return {
  "lervag/vimtex",
  lazy = false,
  config = function()
    -- PDF viewer - Zathura
    vim.g.vimtex_view_method = "zathura"

    -- Compiler settings
    vim.g.vimtex_compiler_method = "latexmk"

    -- Enable quickfix auto-open on compile errors
    vim.g.vimtex_quickfix_mode = 1

    -- Disable overfull/underfull box warnings
    vim.g.vimtex_quickfix_ignore_filters = {
      "Underfull",
      "Overfull",
    }

    -- Enable folding
    vim.g.vimtex_fold_enabled = 1

    -- BibTeX settings
    vim.g.vimtex_complete_bib = {
      simple = 1,
      menu_fmt = "@year, @author_short, @title",
    }

    -- Compiler options
    vim.g.vimtex_compiler_latexmk = {
      build_dir = "",
      callback = 1,
      continuous = 1,
      executable = "latexmk",
      options = {
        "-verbose",
        "-file-line-error",
        "-synctex=1",
        "-interaction=nonstopmode",
      },
    }
  end,
}
