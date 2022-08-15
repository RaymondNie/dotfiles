local action = require("lspsaga.codeaction")

vim.cmd('noremap <C-b> :noh<cr>:call clearmatches()<cr>') -- clear matches Ctrl+b

function map(mode, shortcut, command)
  vim.api.nvim_set_keymap(mode, shortcut, command, { noremap = true, silent = true })
end

function nmap(shortcut, command)
  map('n', shortcut, command)
end

function imap(shortcut, command)
  map('i', shortcut, command)
end

function vmap(shortcut, command)
  map('v', shortcut, command)
end

function cmap(shortcut, command)
  map('c', shortcut, command)
end

function tmap(shortcut, command)
  map('t', shortcut, command)
end

vim.g.mapleader = " "

nmap('<leader>ff', '<cmd>Telescope find_files<cr>')
nmap('<leader>fg', '<cmd>Telescope live_grep<cr>')
nmap('<leader>ha', '<cmd>lua require("harpoon.mark").add_file()<cr>')
nmap('<leader>hm', '<cmd>lua require("harpoon.ui").toggle_quick_menu()<cr>')
nmap('<leader>hf', ':lua require("harpoon.ui").nav_file()<left>' )
nmap('<leader>l' , '<C-w>l')
nmap('<leader>j' , '<C-w>j')
nmap('<leader>k' , '<C-w>k')
nmap('<leader>h' , '<C-w>h')
nmap('<leader>nn', '<cmd>bn<cr>')
nmap('<leader>pp', '<cmd>bp<cr>')
nmap('<leader>p' , '"+p')
nmap('<leader>to', '<cmd>NvimTreeOpen<cr>')
nmap('<leader>tf', '<cmd>NvimTreeFocus<cr>')
nmap('<leader>ut', '<cmd>UndotreeToggle<cr>')

vim.keymap.set("n", "gh", "<cmd>Lspsaga lsp_finder<CR>", { silent = true })
vim.keymap.set("n", "<leader>cf", action.code_action, { silent = true })
vim.keymap.set("n", "K", "<cmd>Lspsaga hover_doc<CR>", { silent = true })
vim.api.nvim_set_keymap('n', '<leader>do', '<cmd>lua vim.diagnostic.open_float()<CR>', { noremap = true, silent = true })

vim.g.NERDCreateDefaultMappings = 1

