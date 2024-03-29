vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.clipboard = 'unnamedplus'

vim.api.nvim_set_hl(0, "ZenBg", { ctermbg = 0 })

vim.opt.spelllang = 'es'
vim.opt.spell = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.g.vimtex_view_general_viewer = 'zathura'
vim.g.tex_comment_nospell = 1
vim.g.vimtex_syntax_enabled = 0
vim.g.vimtex_quickfix_enabled = 0
vim.g.vimtex_compiler_progname = 'nvr'
vim.g.vimtex_view_general_options = [[--unique file:@pdf\#src:@line@tex]]
vim.g.vimtex_quickfix_ignore_filters = {
  'Underfull',
  'Overfull',
  'Negative'
}

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"

vim.g.mapleader = " "
