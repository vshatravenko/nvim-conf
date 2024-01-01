return {
    {
        'windwp/nvim-autopairs',
        event = "InsertEnter",
        opts = {} -- this is equalent to setup({}) function
    },
    {
        'lukas-reineke/cbfmt'
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
    },
    {
        'towolf/vim-helm'
    },
    {
        'z0mbix/vim-shfmt',
        config = function()
            vim.g.shfmt_fmt_on_save = 1
        end
    },
    {
        'itspriddle/vim-shellcheck'
    },
    {
        'fsouza/prettierd'
    },
    {
        'ansible/ansible-lint'
    },
    {
        'rhysd/vim-wasm'
    },
}
