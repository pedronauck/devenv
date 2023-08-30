-- This file is automatically loaded by lazyvim.config.init
local function map(mode, lhs, rhs, opts)
  local keys = require("lazy.core.handler").handlers.keys
  ---@cast keys LazyKeysHandler
  -- do not create the keymap if a lazy keys handler exists
  if not keys.active[keys.parse({ lhs, mode = mode }).id] then
    opts = opts or {}
    opts.silent = opts.silent ~= false
    if opts.remap and not vim.g.vscode then
      opts.remap = nil
    end
    vim.keymap.set(mode, lhs, rhs, opts)
  end
end

-- scroll and search
map("n", "<C-d>", "16jzz")
map("n", "<C-u>", "16kzz")

-- replace word
map("n", "<A-BS>", "daw", { desc = "Delete around word" })
map("v", "<leader>rc", "c<esc>dd", { desc = "Cut lines" })
map("n", "<leader>rw", "caw", { desc = "Replace around word" })
map("n", "<leader>rs", ":%s/", { desc = "Search and replace" })
map("n", "<leader>rr", "<cmd>so %<cr>", { noremap = true, desc = "Reload vimrc", silent = true })

-- typescript
map("n", "<leader>tu", "<cmd>TypescriptRemoveUnused<cr>", { desc = "Remove unused imports" })
map("n", "<leader>ti", "<cmd>TypescriptAddMissingImports<cr>", { desc = "Add Missing Imports" })

-- save file
map({ "i", "v", "n", "s" }, "<C-s>", "<cmd>w<cr>", { desc = "Save file" })

-- move
map("n", "<A-h>", '<cmd>lua require("tmux").move_left()<cr>')
map("n", "<A-j>", '<cmd>lua require("tmux").move_bottom()<cr>')
map("n", "<A-k>", '<cmd>lua require("tmux").move_top()<cr>')
map("n", "<A-l>", '<cmd>lua require("tmux").move_right()<cr>')
map("n", "<A-n>", '<cmd>lua require("tmux").resize_left()<cr>')
map("n", "<A-m>", '<cmd>lua require("tmux").resize_bottom()<cr>')
map("n", "<A-,>", '<cmd>lua require("tmux").resize_top()<cr>')
map("n", "<A-.>", '<cmd>lua require("tmux").resize_right()<cr>')
map("n", "<C-h>", '<cmd>lua require("tmux").move_left()<cr>')
map("n", "<C-j>", '<cmd>lua require("tmux").move_bottom()<cr>')
map("n", "<C-k>", '<cmd>lua require("tmux").move_top()<cr>')
map("n", "<C-l>", '<cmd>lua require("tmux").move_right()<cr>')
map("n", "<C-n>", '<cmd>lua require("tmux").resize_left()<cr>')
map("n", "<C-m>", '<cmd>lua require("tmux").resize_bottom()<cr>')
map("n", "<C-,>", '<cmd>lua require("tmux").resize_top()<cr>')
map("n", "<C-.>", '<cmd>lua require("tmux").resize_right()<cr>')

-- copy and paste
map({ "v", "n", "x" }, "x", '"_x')
map({ "v", "n", "x" }, "X", '"_X')
map({ "v", "n", "x" }, "d", '"_d')
map({ "v" }, "p", '"_dp')
map({ "v" }, "P", '"_dP')
map({ "v", "n", "x" }, "<Del>", '"_x')
map("n", "<leader>p", "o<Esc>0p", { desc = "Paste above" })
map("n", "<leader>P", "O<Esc>0P", { desc = "Paste bellow" })

-- go to begginning
map("n", "gg", "gg0", { desc = "Go to begginning" })

-- diagnostics
map("n", "<leader>cD", "<cmd>DiagWindowShow<cr>", { desc = "Open Diagnostics" })

-- chatgpt
map("n", "<leader>ug", "<cmd>ChatGPT<cr>", { desc = "ChatGPT" })
map(
  { "n", "v" },
  "<leader>cg",
  "<cmd>ChatGPTEditWithInstructions<cr>",
  { desc = "Edit with ChatGPT" }
)

-- backspace on insert
map("i", "<M-BS>", "<Esc>wdbi", { noremap = true })

-- Move Lines
map("n", "<A-d>", "<cmd>m .+1<cr>==", { desc = "Move down" })
map("n", "<A-f>", "<cmd>m .-2<cr>==", { desc = "Move up" })
map("i", "<A-d>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move down" })
map("i", "<A-f>", "<esc><cmd>m .-2<cr>==gi", { desc = "Move up" })
map("v", "<A-d>", ":m '>+1<cr>gv=gv", { desc = "Move down" })
map("v", "<A-f>", ":m '<-2<cr>gv=gv", { desc = "Move up" })

-- glance.nvim
map("n", "gld", "<CMD>Glance definitions<CR>", { desc = "Definitions" })
map("n", "glr", "<CMD>Glance references<CR>", { desc = "References" })
map("n", "gly", "<CMD>Glance type_definitions<CR>", { desc = "Type definitions" })
map("n", "glm", "<CMD>Glance implementations<CR>", { desc = "Implementations" })

-- splitjoin
map("n", "gj", "<CMD>TSJToggle<CR>", { desc = "Toggle node under cursor" })

-- treehopper
map("n", "<leader>h", "<cmd>lua require('tsht').nodes()<CR>", { desc = "Show places to hop" })

-- twilight
map("n", "<leader>ct", "<cmd>Twilight<cr>", { desc = "Toggle Twilight" })
