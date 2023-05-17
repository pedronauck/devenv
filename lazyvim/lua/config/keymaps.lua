local function map(mode, lhs, rhs, opts)
	opts = opts or {}
	opts.silent = opts.silent ~= false
	vim.keymap.set(mode, lhs, rhs, opts)
end

-- scroll and search
map("n", "<C-u>", "<C-d>zz")
map("n", "<C-i>", "<C-u>zz")
map("n", "n", "nzzzv")
map("n", "N", "Nzzzv")

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

-- filebrowser
map("n", "<leader>r", "<leader>fB", { desc = "Browse Files" })

-- backspace on insert
map("i", "<M-BS>", "<Esc>wdbi", { noremap = true })

-- Move Lines
map("n", "<A-d>", "<cmd>m .+1<cr>==", { desc = "Move down" })
map("n", "<A-f>", "<cmd>m .-2<cr>==", { desc = "Move up" })
map("i", "<A-d>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move down" })
map("i", "<A-f>", "<esc><cmd>m .-2<cr>==gi", { desc = "Move up" })
map("v", "<A-d>", ":m '>+1<cr>gv=gv", { desc = "Move down" })
map("v", "<A-f>", ":m '<-2<cr>gv=gv", { desc = "Move up" })
