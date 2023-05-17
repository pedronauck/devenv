local opt = vim.opt

opt.nu = true -- line numbers
opt.relativenumber = true -- relative line numbers
opt.tabstop = 2 -- tab width
opt.softtabstop = 2 -- tab width
opt.shiftwidth = 2 -- tab width
opt.shiftround = true -- Round indent
opt.expandtab = true -- use spaces instead of tabs
opt.smartindent = true -- auto indent
opt.hlsearch = true -- highlight search results
opt.incsearch = true -- incremental search
opt.termguicolors = true -- true color support
opt.backup = false -- disable backup
opt.clipboard = "unnamedplus" -- use system clipboard
opt.conceallevel = 0 -- disable concealing
opt.fileencoding = "utf-8" -- file encoding
opt.mouse = "a" -- enable mouse
opt.showtabline = 0 -- disable tabline
opt.smartcase = true -- smart case
opt.updatetime = 300 -- faster completion
opt.writebackup = false -- disable backup
opt.cursorline = true -- highlight current line
opt.breakindent = true -- indent wrapped lines
opt.signcolumn = "yes" -- always show sign column
opt.sidescrolloff = 8 -- Columns of context
opt.laststatus = 3 -- always show statusline
opt.showcmd = false -- disable showcmd
-- opt.colorcolumn = "80" -- color column
opt.autowrite = true -- Enable auto write
opt.completeopt = "menu,menuone,noselect"
opt.confirm = true -- Confirm to save changes before exiting modified buffer
opt.formatoptions = "jcroqlnt" -- tcqj
opt.grepformat = "%f:%l:%c:%m"
opt.grepprg = "rg --vimgrep"
opt.ignorecase = true -- Ignore case
opt.inccommand = "nosplit" -- preview incremental substitute
opt.laststatus = 0
opt.list = true -- Show some invisible characters (tabs...
opt.pumblend = 10 -- Popup blend
opt.pumheight = 10 -- Maximum number of entries in a popup
opt.shortmess:append({ W = true, I = true, c = true })
opt.showmode = false -- Dont show mode since we have a statusline
opt.spelllang = { "en" }
opt.splitbelow = true -- Put new windows below current
opt.splitright = true -- Put new windows right of current
opt.timeoutlen = 300
opt.undofile = true
opt.undolevels = 10000
opt.updatetime = 200 -- Save swap file and trigger CursorHold
opt.wildmode = "longest:full,full" -- Command-line completion mode
opt.winminwidth = 5 -- Minimum window width
opt.wrap = false -- Disable line wrap

if vim.fn.has("nvim-0.9.0") == 1 then
	opt.splitkeep = "screen"
	opt.shortmess:append({ C = true })
end

-- Fix markdown indentation settings
vim.g.markdown_recommended_style = 0
