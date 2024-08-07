
-- cursor stays large while typing
vim.opt.guicursor = ""
-- linenumbers
vim.opt.nu = true
vim.opt.relativenumber = true

-- indentation
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.g.netrw_bufsettings = 'noma nomod nu rnu nobl nowrap ro'
-- search
vim.opt.hlsearch = true
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 10

vim.opt.updatetime = 50
vim.opt.cursorline=true

vim.o.ignorecase = true
vim.o.smartcase = true

-- Copilot no tab map
vim.g.copilot_no_tab_map = true

vim.cmd([[
    " Set 2 space indentation for Terraform files
    autocmd FileType terraform setlocal shiftwidth=2
    autocmd FileType terraform setlocal softtabstop=2
    autocmd FileType terraform setlocal expandtab
]])
