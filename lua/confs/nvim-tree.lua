require("nvim-tree").setup({
  --respect_buf_cwd = true,
  --update_focused_file = {
    --enable = true,
    --update_cwd = true,
  --},
})

--vim.cmd('autocmd BufEnter * silent! lcd %:p:h')
