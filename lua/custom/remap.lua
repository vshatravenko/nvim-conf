vim.keymap.set('n', '<leader>vs', ':vsplit<CR>')

vim.keymap.set('n', '<leader>E', 'oif err != nil {<CR>}<Esc>Oreturn err<Esc>')

-- Go up and down on wrapped lines
vim.keymap.set('n', 'j', 'gj', { desc = 'Up', noremap = true })
vim.keymap.set('n', 'k', 'gk', { desc = 'Down', noremap = true })
