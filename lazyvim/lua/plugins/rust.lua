return {
  -- inlay hints
  {
    "simrat39/inlay-hints.nvim",
    config = function()
      require("inlay-hints").setup({
        only_current_line = false,
        eol = {
          right_align = false,
        },
      })
    end,
  },
}
