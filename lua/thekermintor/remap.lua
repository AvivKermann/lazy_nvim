-- personal remaps


vim.g.mapleader = " "

-- keeps the visual selection when indenting multi-line
vim.api.nvim_set_keymap("v",">",">gv",{noremap = true, silent = true})
vim.api.nvim_set_keymap("v","<","<gv",{noremap = true, silent = true})
vim.api.nvim_set_keymap("n",">",">gv",{noremap = true, silent = true})
vim.api.nvim_set_keymap("n","<","<gv",{noremap = true, silent = true})

vim.keymap.set("n", "<leader>af", vim.cmd.Ex)
vim.keymap.set("n", "<leader>s", vim.cmd.w)
vim.keymap.set("n", "<leader>sq", vim.cmd.wq)

vim.keymap.set('v', "Y", '"+yy')
vim.keymap.set("n", "<leader>qa", vim.cmd.q)
vim.api.nvim_set_keymap("n", "<leader>cmp", ":lua ColorMyPencils()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>st", ":TransparentEnable<CR>", {noremap=true, silent=true})
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- window split verticlly  remap
vim.api.nvim_set_keymap("n", "<leader>|", "<C-w>v<C-w>l", {noremap = true})
vim.api.nvim_set_keymap("n", "<leader>-", "<C-w>s<C-w>j", {noremap = true})

-- closes the windows
vim.api.nvim_set_keymap("n", "<leader>cr", "<C-w>l<C-w>c", {noremap=true})
vim.api.nvim_set_keymap("n", "<leader>cl", "<C-w>h<C-w>c", {noremap=true})

-- switch between windows
vim.keymap.set("n", "<c-k>", ":wincmd k<CR>")
vim.keymap.set("n", "<c-j>", ":wincmd j<CR>")
vim.keymap.set("n", "<c-h>", ":wincmd h<CR>")
vim.keymap.set("n", "<c-l>", ":wincmd l<CR>")

-- clear search params
vim.api.nvim_set_keymap("n", "<leader>cs", ":noh<CR>", {noremap=true, silent=true})

-- remap copilot accept to the control c key
vim.api.nvim_set_keymap("i", "<C-c>", 'copilot#Accept("\\<CR>")', {expr = true,replace_keycodes = false })
