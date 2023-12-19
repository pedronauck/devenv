return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    filesystem = {
      -- bind_to_cwd = false,
      -- follow_current_file = {
      --   enable = true,
      --   leave_dirs_open = true,
      -- },
      use_libuv_file_watcher = true,
      group_empty_dirs = false,
    },
    default_component_configs = {
      indent = {
        with_markers = false,
        -- with_expanders = true,
      },
      modified = {
        symbol = " ",
        highlight = "NeoTreeModified",
      },
      icon = {
        folder_closed = "",
        folder_open = "",
        folder_empty = "",
        folder_empty_open = "",
      },
      git_status = {
        symbols = {
          -- Change type
          added = "",
          deleted = "",
          modified = "",
          renamed = "",
          -- Status type
          untracked = "",
          ignored = "",
          unstaged = "",
          staged = "",
          conflict = "",
        },
      },
    },
    event_handlers = {
      {
        event = "neo_tree_buffer_enter",
        handler = function()
          vim.cmd([[
          setlocal relativenumber
        ]])
        end,
      },
    },
    window = {
      position = "left",
      width = 35,
      mappings = {
        ["o"] = "open",
        ["<space>"] = "none",
        ["z"] = "none",
      },
    },
  },
  config = function(_, opts)
    -- Unless you are still migrating, remove the deprecated commands from v1.x
    vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])
    vim.cmd([[nnoremap \ :Neotree reveal<cr>]])
    require("neo-tree").setup(opts)
  end,
}
