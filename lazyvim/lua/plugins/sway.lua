return {
  "neovim/nvim-lspconfig",
  ---@class PluginLspOpts
  opts = {
    ---@type lspconfig.options
    servers = {
      prismals = {},
    },
  },
  init = function()
    local lspconfig = require("lspconfig")
    local configs = require("lspconfig.configs")

    -- Check if the config is already defined (useful when reloading this file)
    configs.sway_lsp = {
      default_config = {
        cmd = { "forc-lsp" },
        filetypes = { "sway" },
        on_attach = function()
          on_attach()
        end,
        init_options = {
          -- Any initialization options
          logging = { level = "trace" },
          inlayHints = { maxLength = 25, renderColons = true, typeHints = true },
          trace = { extension = true, server = "messages" },
        },
        root_dir = function(fname)
          return lspconfig.util.find_git_ancestor(fname)
        end,
        settings = {},
      },
    }

    lspconfig.sway_lsp.setup({})
    lspconfig.astro.setup({})
  end,
}
