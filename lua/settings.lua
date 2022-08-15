-- Base Settings
vim.opt.exrc = true
vim.opt.guicursor = ''
vim.opt.relativenumber = true
vim.opt.hlsearch = false
vim.opt.hidden = true
vim.opt.errorbells = false
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.nu = true
vim.opt.wrap = true
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = vim.fn.expand('~/.vim/undodir')
vim.opt.undofile = true
vim.opt.incsearch = true
vim.opt.termguicolors = true
vim.opt.scrolloff = 8
vim.opt.showmode = true
vim.opt.completeopt = 'menuone,noinsert,noselect'
vim.opt.colorcolumn = '80'
vim.opt.signcolumn = 'yes:1'
vim.opt.cmdheight = 2
vim.opt.ph = 5
vim.opt.ignorecase = true

-- Vimscript
vim.api.nvim_create_autocmd({ "BufWritePre" }, {
  pattern = { "*" },
  command = [[%s/\s\+$//e]],
})

-- Plugins
vim.g.NERDCreateDefaultMappings = 0
vim.g.airline_powerline_fonts = 1
vim.g.closetag_filenames='*.html,*.tsx,*.jsx'

-- Theme
vim.g.everforest_background = 'hard'
vim.opt.encoding = 'utf-8'
vim.cmd('colorscheme everforest')
vim.cmd('filetype plugin on')
vim.cmd('set statusline+=%F')

-- Diagnostic
vim.diagnostic.config({
  virtual_text = false,
})

vim.fn.sign_define(
  'DiagnosticSignError',
  { text = '😡', texthl = 'LspDiagnosticsDefaultError' }
)

vim.fn.sign_define(
  'DiagnosticSignWarn',
  { text = '', texthl = 'LspDiagnosticsDefaultWarning' }
)

vim.fn.sign_define(
  'DiagnosticSignInfo',
  { text = '', texthl = 'LspDiagnosticsDefaultInformation' }
)

vim.fn.sign_define(
  'DiagnosticSignHint',
  { text = '', texthl = 'LspDiagnosticsDefaultHint' }
)
