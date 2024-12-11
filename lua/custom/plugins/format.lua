return {
  {
    'lukas-reineke/cbfmt',
  },
  {
    'johnfrankmorgan/whitespace.nvim',
    opts = {
      highlight = 'DiffDelete',
      -- `ignored_filetypes` configures which filetypes to ignore when
      -- displaying trailing whitespace
      ignored_filetypes = { 'TelescopePrompt', 'Trouble', 'help' },

      -- `ignore_terminal` configures whether to ignore terminal buffers
      ignore_terminal = true,
    },
    init = function()
      -- Trim trailing whitespaces
      vim.keymap.set('n', '<leader>T', require('whitespace-nvim').trim)
    end,
  },
  {
    'z0mbix/vim-shfmt',
    config = function()
      vim.g.shfmt_fmt_on_save = 1
    end,
  },
  {
    'itspriddle/vim-shellcheck',
  },
}
