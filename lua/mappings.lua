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

-- Base Mappings
nmap('<leader>l' , '<C-w>l')
nmap('<leader>j' , '<C-w>j')
nmap('<leader>k' , '<C-w>k')
nmap('<leader>h' , '<C-w>h')
nmap('<leader>nn', '<cmd>bn<cr>')
nmap('<leader>pp', '<cmd>bp<cr>')
nmap('<leader>p' , '"+p')

nmap('<leader>1', ':1b<cr>' )
nmap('<leader>2', ':2b<cr>' )
nmap('<leader>3', ':3b<cr>' )
nmap('<leader>4', ':4b<cr>' )
nmap('<leader>5', ':5b<cr>' )
nmap('<leader>6', ':6b<cr>' )
nmap('<leader>7', ':7b<cr>' )
nmap('<leader>8', ':8b<cr>' )
nmap('<leader>9', ':9b<cr>' )
nmap('<leader>0', ':0b<cr>' )

nmap('<leader>gd', '<cmd>lua vim.lsp.buf.definition()<cr>' )

-- Telescope
nmap('<leader>ff', '<cmd>Telescope find_files<cr>')
nmap('<leader>fg', '<cmd>Telescope live_grep<cr>')
nmap('<leader>cf', '<cmd>Telescope current_buffer_fuzzy_find<cr>')

-- Harpoon
nmap('<leader>ha', '<cmd>lua require("harpoon.mark").add_file()<cr>')
nmap('<leader>hm', '<cmd>lua require("harpoon.ui").toggle_quick_menu()<cr>')

nmap('<leader>h1', ':lua require("harpoon.ui").nav_file(1)<cr>' )
nmap('<leader>h2', ':lua require("harpoon.ui").nav_file(2)<cr>' )
nmap('<leader>h3', ':lua require("harpoon.ui").nav_file(3)<cr>' )
nmap('<leader>h4', ':lua require("harpoon.ui").nav_file(4)<cr>' )
nmap('<leader>h5', ':lua require("harpoon.ui").nav_file(5)<cr>' )
nmap('<leader>h6', ':lua require("harpoon.ui").nav_file(6)<cr>' )
nmap('<leader>h7', ':lua require("harpoon.ui").nav_file(7)<cr>' )
nmap('<leader>h8', ':lua require("harpoon.ui").nav_file(8)<cr>' )
nmap('<leader>h9', ':lua require("harpoon.ui").nav_file(9)<cr>' )
nmap('<leader>h0', ':lua require("harpoon.ui").nav_file(0)<cr>' )

-- nvimtree
nmap('<leader>to', '<cmd>NvimTreeOpen<cr>')
nmap('<leader>tf', '<cmd>NvimTreeFocus<cr>')
nmap('<leader>tb', '<cmd>NvimTreeFindFile<cr>')
nmap('<leader>ut', '<cmd>UndotreeToggle<cr>')

-- LspSaga
vim.keymap.set("n", "<leader>gh", "<cmd>Lspsaga lsp_finder<CR>", { silent = true })
vim.keymap.set("n", "<leader>ca", action.code_action, { silent = true })
vim.keymap.set("n", "<leader>K", "<cmd>Lspsaga hover_doc<CR>", { silent = true })
vim.api.nvim_set_keymap('n', '<leader>do', '<cmd>lua vim.diagnostic.open_float()<CR>', { noremap = true, silent = true })

-- Debugger
vim.fn.sign_define('DapsBreakpoint', {text='x', texthl='', linehl='', numhl=''})
vim.fn.sign_define('DapsStopped', {text='o', texthl='', linehl='', numhl=''})

nmap('<leader>db', ':lua require("dap").toggle_breakpoint()<cr>')
nmap('<S-k>', ':lua require("dap").step_out()<cr>')
nmap('<S-l>', ':lua require("dap").step_into()<cr>')
nmap('<S-j>', ':lua require("dap").step_over()<cr>')
nmap('<leader>dc', ':lua require("dap").continue()<cr>')
nmap('<leader>dr', ':lua require("dap").repl.open()<cr>')
nmap('<leader>dt', ':lua require("dapui").toggle()<cr>')

-- Lazygit/Floaterm
nmap('<leader>g', ':FloatermNew lazygit<cr>')
