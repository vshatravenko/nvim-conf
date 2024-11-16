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
    {
        'averms/black-nvim',

    },
    {
        "stevearc/conform.nvim",
        event = "BufWritePre", -- load the plugin before saving
        keys = {
            {
                "<leader>f",
                function() require("conform").format({ lsp_fallback = true }) end,
                desc = "Format",
            },
        },
        opts = {
            formatters_by_ft = {
                -- first use isort and then black
                python = { "isort", "black" },
                -- "inject" is a special formatter from conform.nvim, which
                -- formats treesitter-injected code. Basically, this makes
                -- conform.nvim format python codeblocks inside a markdown file.
                markdown = { "inject" },
            },
            -- enable format-on-save
            format_on_save = {
                -- when no formatter is set up for a filetype, fall back to formatting via the LSP.
                lsp_fallback = true,
            },
        },
    },
}
