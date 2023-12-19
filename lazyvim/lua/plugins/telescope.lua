local Util = require("lazyvim.util")

local layout_config = {
  horizontal = {
    width = 0.8,
    height = 0.75,
    preview_width = 0.4,
  },
}

return {
  {
    "telescope.nvim",
    dependencies = {
      "nvim-telescope/telescope-file-browser.nvim",
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "nvim-telescope/telescope-ui-select.nvim",
      {
        "nvim-telescope/telescope-fzf-native.nvim",
        build = "make",
        config = function()
          require("telescope").load_extension("fzf")
        end,
      },
    },
    keys = {
      {
        "<leader>fh",
        Util.telescope("files", { hidden = true }),
        desc = "Find Files (root dir, including hidden)",
      },
      {
        "<leader>fH",
        Util.telescope("files", { cwd = false, hidden = true }),
        desc = "Find Files (cwd, including hidden)",
      },
      {
        "<leader>fB",
        ":Telescope file_browser path=%:p:h=%:p:h<cr>",
        desc = "Browse Files",
      },
      {
        "<leader>fl",
        Util.telescope("resume"),
        desc = "Resume last action",
      },
      {
        "<leader>ss",
        Util.telescope("lsp_document_symbols"),
        desc = "Goto Symbol",
      },
      {
        "<leader>sS",
        Util.telescope("lsp_dynamic_workspace_symbols"),
        desc = "Goto Symbol (Workspace)",
      },
    },
    opts = {
      defaults = {
        theme = "dropdown",
        -- previewer = true,
        -- file_ignore_patterns = { "node_modules", "package-lock.json" },
        -- initial_mode = "insert",
        -- select_strategy = "reset",
        sorting_strategy = "ascending",
        layout_strategy = "horizontal",
        layout_config = {
          prompt_position = "top",
          --   width = 0.75,
          --   height = 0.75,
          --   preview_cutoff = 120,
        },
        -- path_display = { "smart" },
        -- winblend = 0,
        -- border = {},
        -- borderchars = nil,
        -- color_devicons = true,
        -- set_env = { ["COLORTERM"] = "truecolor" },
        -- vimgrep_arguments = {
        --   "rg",
        --   "--color=never",
        --   "--no-heading",
        --   "--with-filename",
        --   "--line-number",
        --   "--column",
        --   "--smart-case",
        --   "--hidden",
        --   "--glob=!.git/",
        -- },
      },
      pickers = {
        find_files = {
          hidden = true,
          previewer = true,
          layout_config = layout_config,
        },
        -- git_files = {
        --   hidden = true,
        --   previewer = true,
        --   layout_config = layout_config,
        -- },
        -- live_grep = {
        --   --@usage don't include the filename in the search results
        --   only_sort_text = true,
        --   previewer = true,
        --   layout_config = layout_config,
        -- },
        -- grep_string = {
        --   --@usage don't include the filename in the search results
        --   only_sort_text = true,
        --   previewer = true,
        --   layout_config = layout_config,
        -- },
        -- buffers = {
        --   -- initial_mode = "normal",
        --   previewer = false,
        --   layout_config = layout_config,
        -- },
        -- lsp_references = {
        --   show_line = false,
        --   layout_config = layout_config,
        -- },
        treesitter = {
          show_line = false,
          -- sorting_strategy = nil,
          -- layout_config = layout_config,
          symbols = {
            "class",
            "function",
            "method",
            "interface",
            "type",
            "const",
            "variable",
            "property",
            "constructor",
            "module",
            "struct",
            "trait",
            "field",
          },
        },
      },
      extensions = {
        fzf = {
          fuzzy = true, -- false will only do exact matching
          override_generic_sorter = true, -- override the generic sorter
          override_file_sorter = true, -- override the file sorter
          case_mode = "smart_case", -- or "ignore_case" or "respect_case"
        },
        ["ui-select"] = {
          require("telescope.themes").get_dropdown({
            previewer = false,
            initial_mode = "normal",
            sorting_strategy = "ascending",
            layout_strategy = "horizontal",
            layout_config = layout_config,
          }),
        },
      },
    },
    config = function(_, opts)
      local telescope = require("telescope")
      telescope.setup(opts)
      telescope.load_extension("fzf")
      telescope.load_extension("ui-select")
      telescope.load_extension("file_browser")
    end,
  },
}
