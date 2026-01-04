vim.keymap.set('n', '<leader>vs', ':vsplit<CR>')

vim.keymap.set('n', '<leader>E', 'oif err != nil {<CR>}<Esc>Oreturn err<Esc>')

-- Go up and down on wrapped lines
vim.keymap.set('n', 'j', 'gj', { desc = 'Up', noremap = true })
vim.keymap.set('n', 'k', 'gk', { desc = 'Down', noremap = true })

-- Wish I did this a long time ago
vim.keymap.set('n', '<leader>w', ':write<CR>')
vim.keymap.set('n', '<leader>q', ':quit<CR>')
vim.keymap.set('n', '<leader>a', ':wqa<CR>')
