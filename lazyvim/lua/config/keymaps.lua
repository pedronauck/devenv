-- This file is automatically loaded by lazyvim.config.init
local Util = require("lazyvim.util")

-- scroll and search
vim.keymap.set("n", "<C-d>", "16jzz")
vim.keymap.set("n", "<C-u>", "16kzz")

-- replace word
vim.keymap.set("n", "<A-BS>", "daw", { desc = "Delete around word" })
vim.keymap.set("v", "<leader>rc", "c<esc>dd", { desc = "Cut lines" })
vim.keymap.set("n", "<leader>rw", "caw", { desc = "Replace around word" })
vim.keymap.set("n", "<leader>rs", ":%s/", { desc = "Search and replace" })

-- reload
vim.keymap.set("n", "<leader>rl", "<cmd>LspRestart<cr>", { desc = "Restart LSP" })
vim.keymap.set(
  "n",
  "<leader>rr",
  "<cmd>so %<cr>",
  { noremap = true, desc = "Reload vimrc", silent = true }
)

-- save file
vim.keymap.set({ "i", "v", "n", "s" }, "<C-s>", "<cmd>w<cr>", { desc = "Save file" })

-- move
vim.keymap.set("n", "<A-h>", '<cmd>lua require("tmux").move_left()<cr>')
vim.keymap.set("n", "<A-j>", '<cmd>lua require("tmux").move_bottom()<cr>')
vim.keymap.set("n", "<A-k>", '<cmd>lua require("tmux").move_top()<cr>')
vim.keymap.set("n", "<A-l>", '<cmd>lua require("tmux").move_right()<cr>')
vim.keymap.set("n", "<A-n>", '<cmd>lua require("tmux").resize_left()<cr>')
vim.keymap.set("n", "<A-m>", '<cmd>lua require("tmux").resize_bottom()<cr>')
vim.keymap.set("n", "<A-,>", '<cmd>lua require("tmux").resize_top()<cr>')
vim.keymap.set("n", "<A-.>", '<cmd>lua require("tmux").resize_right()<cr>')
vim.keymap.set("n", "<C-h>", '<cmd>lua require("tmux").move_left()<cr>')
vim.keymap.set("n", "<C-j>", '<cmd>lua require("tmux").move_bottom()<cr>')
vim.keymap.set("n", "<C-k>", '<cmd>lua require("tmux").move_top()<cr>')
vim.keymap.set("n", "<C-l>", '<cmd>lua require("tmux").move_right()<cr>')
vim.keymap.set("n", "<C-n>", '<cmd>lua require("tmux").resize_left()<cr>')
vim.keymap.set("n", "<C-m>", '<cmd>lua require("tmux").resize_bottom()<cr>')
vim.keymap.set("n", "<C-,>", '<cmd>lua require("tmux").resize_top()<cr>')
vim.keymap.set("n", "<C-.>", '<cmd>lua require("tmux").resize_right()<cr>')

-- copy and paste
vim.keymap.set({ "v", "n", "x" }, "x", '"_x')
vim.keymap.set({ "v", "n", "x" }, "X", '"_X')
vim.keymap.set({ "v", "n", "x" }, "d", '"_d')
vim.keymap.set({ "v" }, "p", '"_dp')
vim.keymap.set({ "v" }, "P", '"_dP')
vim.keymap.set({ "v", "n", "x" }, "<Del>", '"_x')
vim.keymap.set("n", "<leader>p", "o<Esc>0p", { desc = "Paste above" })
vim.keymap.set("n", "<leader>P", "O<Esc>0P", { desc = "Paste bellow" })
vim.keymap.set("n", "<leader>cp", "^y$", { desc = "Copy line" })

-- go to begginning
vim.keymap.set("n", "gg", "gg0", { desc = "Go to begginning" })

-- backspace on insert
vim.keymap.set("i", "<M-BS>", "<Esc>wdbi", { noremap = true })

-- move Lines
vim.keymap.set("n", "<A-d>", "<cmd>m .+1<cr>==", { desc = "Move down" })
vim.keymap.set("n", "<A-f>", "<cmd>m .-2<cr>==", { desc = "Move up" })
vim.keymap.set("i", "<A-d>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move down" })
vim.keymap.set("i", "<A-f>", "<esc><cmd>m .-2<cr>==gi", { desc = "Move up" })
vim.keymap.set("v", "<A-d>", ":m '>+1<cr>gv=gv", { desc = "Move down" })
vim.keymap.set("v", "<A-f>", ":m '<-2<cr>gv=gv", { desc = "Move up" })

-- splitjoin
vim.keymap.set("n", "gj", "<CMD>TSJToggle<CR>", { desc = "Toggle node under cursor" })

-- folds
vim.keymap.set("n", "zR", require("ufo").openAllFolds)
vim.keymap.set("n", "zM", require("ufo").closeAllFolds)

-- lazydocker
vim.keymap.set("n", "<leader>gd", function()
  Util.terminal({ "lazydocker" }, { esc_esc = false, ctrl_hjkl = false })
end, { desc = "Lazydocker" })
