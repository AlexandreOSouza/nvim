local opt = vim.opt

vim.cmd([[
  augroup _manual_folds
    autocmd!
    autocmd BufWritePre *.rs lua vim.lsp.buf.format({ async = false })
  augroup end
]])
-- line numbers
opt.relativenumber = true
opt.number = true

-- tabs & identation
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

-- line wrapping
opt.wrap = false

-- search settings
opt.ignorecase = true
opt.smartcase = true

opt.hlsearch = false
opt.incsearch = true

opt.scrolloff = 8

-- cursor line
opt.cursorline = true

-- appearance
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

-- backspace
opt.backspace = "indent,eol,start"

-- clipboard
opt.clipboard:append("unnamedplus")

-- split windows
opt.splitright = true
opt.splitbelow = true

opt.iskeyword:append("-")
