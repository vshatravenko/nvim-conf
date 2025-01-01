-- Disable swap/backup logic (along with messages)
vim.opt.swapfile = false
vim.opt.backup = false

vim.opt.undodir = os.getenv 'HOME' .. '/.vim/undodir'

vim.opt.termguicolors = true

-- Case-insensitive searching UNLESS \C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

-- Disable mouse mode
vim.o.mouse = ''

-- Set highlight on search
vim.o.hlsearch = true

-- Sync clipboard between OS and Neovim.
--  See `:help 'clipboard'`
vim.o.clipboard = 'unnamedplus'

-- Make line numbers default
vim.wo.number = true

-- Keep signcolumn on by default
vim.wo.signcolumn = 'yes'

-- Split window preferences
vim.opt.splitright = true -- split vertical window to the right
vim.opt.splitbelow = true -- split horizontal window to the bottom

-- Indentation & spacing
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.autoindent = true
vim.opt.expandtab = true
vim.opt.smartindent = true

vim.filetype.add {
  extension = {
    gotmpl = 'gotmpl',
  },
  pattern = {
    ['.*/templates/.*%.tpl'] = 'helm',
    ['.*/templates/.*%.ya?ml'] = 'helm',
    ['helmfile.*%.ya?ml'] = 'helm',
  },
}
