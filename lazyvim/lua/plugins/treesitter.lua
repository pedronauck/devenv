return {
  "nvim-treesitter/nvim-treesitter",
  dependencies = {
    "nvim-treesitter/nvim-treesitter-textobjects",
    "folke/twilight.nvim",
    "mfussenegger/nvim-treehopper",
    "alvan/vim-closetag",
    "windwp/nvim-ts-autotag",
    {
      "windwp/nvim-autopairs",
      event = "InsertEnter",
      opts = {}, -- this is equalent to setup({}) function
    },
  },
  opts = {
    highlight = { enable = true },
    indent = { enable = true },
    ensure_installed = {
      "bash",
      "c",
      "html",
      "javascript",
      "json",
      "lua",
      "luadoc",
      "luap",
      "markdown",
      "markdown_inline",
      "python",
      "query",
      "regex",
      "tsx",
      "typescript",
      "vim",
      "vimdoc",
      "yaml",
    },
    incremental_selection = {
      enable = true,
      keymaps = {
        init_selection = "<C-space>",
        node_incremental = "<C-space>",
        scope_incremental = false,
        node_decremental = "<bs>",
      },
    },
  },
  config = function(_, opts)
    local cmp_autopairs = require("nvim-autopairs.completion.cmp")
    local cmp = require("cmp")
    cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())

    local npairs = require("nvim-autopairs")

    npairs.setup({
      check_ts = true,
      ts_config = {
        javascript = { "template_string" },
      },
    })

    vim.lsp.handlers["textDocument/publishDiagnostics"] =
      vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
        underline = true,
        virtual_text = {
          spacing = 5,
          severity_limit = "Warning",
        },
        update_in_insert = true,
      })

    require("nvim-treesitter.configs").setup(opts)
    require("nvim-ts-autotag").setup({
      enable = true,
      enable_rename = true,
      enable_close = true,
      enable_close_on_slash = true,
    })

    vim.filetype.add({ extension = { mdx = "mdx" } })
    vim.treesitter.language.register("markdown", "mdx")
  end,
}
