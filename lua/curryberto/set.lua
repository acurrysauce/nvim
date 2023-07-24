--enable line numbers
vim.opt.nu = true
vim.opt.relativenumber = true

--indenting stuff
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

--line wrapping is kind of bad
vim.opt.wrap = false

--backup undo dir so that undo tree can persist across sessions
--vim.opt.swapfile = false
--vim.opt.backup = false
--vim.opt.undofile = true
--vim.opt.undodir = os.getenv("Home") .. "/.vim/undodir"

vim.opt.hlsearch = true
vim.opt.incsearch = true

vim.opt.termguicolors = true

--keep the cursor from going to the bottom of the screen
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"

--special prefix you can use when creating custom commands e.g. <leader>pv
vim.g.mapleader = " "
