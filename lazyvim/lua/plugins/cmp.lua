return {
  "hrsh7th/nvim-cmp",
  dependencies = {
    "hrsh7th/cmp-emoji",
  },
  ---@param opts cmp.ConfigSchema
  opts = function(_, opts)
    local cmp = require("cmp")

    opts.snippet = {
      expand = function(args)
        require("luasnip").lsp_expand(args.body)
      end,
    }
    opts.sources = cmp.config.sources(vim.list_extend(opts.sources, {
      { name = "emoji" },
    }))
    opts.mapping = vim.tbl_extend("force", opts.mapping, {
      ["<C-a>"] = cmp.mapping.complete(),
    })
  end,
}
