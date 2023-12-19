return {
  -- {
  --   "mrcjkb/rustaceanvim",
  --   version = "^3",
  --   dependencies = {
  --     "nvim-lua/plenary.nvim",
  --     {
  --       "lvimuser/lsp-inlayhints.nvim",
  --       opts = {},
  --     },
  --   },
  --   ft = { "rust" },
  --   config = function()
  --     vim.g.rustaceanvim = {
  --       inlay_hints = {
  --         highlight = "NonText",
  --       },
  --       tools = {
  --         hover_actions = {
  --           auto_focus = true,
  --         },
  --       },
  --       server = {
  --         on_attach = function(client, bufnr)
  --           require("lsp-inlayhints").on_attach(client, bufnr)
  --         end,
  --       },
  --     }
  --   end,
  -- },

  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      {
        "Saecki/crates.nvim",
        event = { "BufRead Cargo.toml" },
        opts = {
          src = {
            cmp = { enabled = true },
          },
        },
      },
    },
    ---@param opts cmp.ConfigSchema
    opts = function(_, opts)
      local cmp = require("cmp")
      opts.sources = cmp.config.sources(vim.list_extend(opts.sources, {
        { name = "crates" },
      }))
    end,
  },

  {
    "Saecki/crates.nvim",
    event = { "BufRead Cargo.toml" },
    opts = {
      src = {
        cmp = { enabled = true },
      },
    },
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      if type(opts.ensure_installed) == "table" then
        vim.list_extend(opts.ensure_installed, { "ron", "rust", "toml" })
      end
    end,
  },
}
