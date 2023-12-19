return {
  "neovim/nvim-lspconfig",
  init = function()
    local lspconfig = require("lspconfig")
    local configs = require("lspconfig.configs")

    -- Check if the config is already defined (useful when reloading this file)
    configs.sway_lsp = {
      default_config = {
        cmd = { "forc-lsp" },
        filetypes = { "sway" },
        init_options = {
          -- Any initialization options
          logging = { level = "trace" },
          trace = { extension = true, server = "messages" },
        },
        root_dir = function(fname)
          return lspconfig.util.find_git_ancestor(fname)
        end,
        settings = {},
      },
    }

    lspconfig.sway_lsp.setup({})
  end,
}
