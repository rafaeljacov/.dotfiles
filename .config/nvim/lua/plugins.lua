return {
    { "folke/neodev.nvim", opts = {} },

    -- Color Schemes
    'tiagovla/tokyodark.nvim',
    { 'catppuccin/nvim', name = 'catppuccin', priority = 1000 },

    'Wansmer/treesj',
    'nvimdev/lspsaga.nvim',
    'onsails/lspkind.nvim',
    'mbbill/undotree',
    'tpope/vim-fugitive',
    'nvim-lualine/lualine.nvim',
    'nvimtools/none-ls.nvim',

    -- Debugger
    { "rcarriga/nvim-dap-ui", dependencies = { "mfussenegger/nvim-dap" } },
    'jay-babu/mason-nvim-dap.nvim',
    'theHamsta/nvim-dap-virtual-text',

    {
        'kristijanhusak/vim-dadbod-ui',
        dependencies = {
            { 'tpope/vim-dadbod',                     lazy = true },
            { 'kristijanhusak/vim-dadbod-completion', ft = { 'sql', 'mysql', 'plsql' }, lazy = true },
        },
        cmd = {
            'DBUI',
            'DBUIToggle',
            'DBUIAddConnection',
            'DBUIFindBuffer',
        },
        init = function()
            -- Your DBUI configuration
            vim.g.db_ui_use_nerd_fonts = 1
            vim.keymap.set('n', '<leader>Db', '<Cmd>DBUIToggle<cr>')
        end,
    },
    {
        'lewis6991/gitsigns.nvim',
        opts = {}
    },
    { 'nvim-telescope/telescope-fzf-native.nvim', build = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' },
    {
        'nvim-treesitter/nvim-treesitter',
        build = ':TSUpdate',
        dependencies = {
            'JoosepAlviste/nvim-ts-context-commentstring'
        }
    },
    {
        'numToStr/Comment.nvim',
        opts = {}
    },
    {
        'nvim-telescope/telescope.nvim',
        version = '0.1.5',
        -- or                            , branch = '0.1.x',
        dependencies = { { 'nvim-lua/plenary.nvim' } }
    },
    {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        dependencies = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' },             -- Required
            { 'williamboman/mason.nvim' },           -- Optional
            { 'williamboman/mason-lspconfig.nvim' }, -- Optional

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' }, -- Required
            { 'hrsh7th/cmp-nvim-lua' },
            { 'hrsh7th/cmp-buffer' },
            { 'saadparwaiz1/cmp_luasnip' },
            { 'hrsh7th/cmp-path' },
            { 'hrsh7th/cmp-nvim-lsp' }, -- Required
            {
                'L3MON4D3/LuaSnip',
                dependencies = {
                    { 'rafamadriz/friendly-snippets' }
                }
            }, -- Required
        }
    },
    {
        'windwp/nvim-autopairs',
        event = "InsertEnter",
        opts = {}
    },
    'windwp/nvim-ts-autotag',
    {
        "kylechui/nvim-surround",
        version = "*", -- Use for stability; omit to use `main` branch for the latest features
        event = "VeryLazy",
        opts = {}
    },
    {
        'nvim-tree/nvim-tree.lua',
        dependencies = {
            'nvim-tree/nvim-web-devicons', -- optional
        },
    },
    {
        'folke/which-key.nvim',
        config = function()
            vim.o.timeout = true
            vim.o.timeoutlen = 500
            require('which-key').setup {}
        end
    },
    {
        'norcalli/nvim-colorizer.lua',
        opts = {}
    },
    {
        'nvimdev/dashboard-nvim',
        event = 'VimEnter',
        opts = {},
        dependencies = { 'nvim-tree/nvim-web-devicons' }
    },
    {
        'barrett-ruth/live-server.nvim',
        build = "npm i -g live-server",
        config = true,
        ft = { 'html' },
        lazy = true
    },
    {
        "ThePrimeagen/harpoon",
        branch = "harpoon2",
    },
    {
        "lukas-reineke/indent-blankline.nvim",
        main = "ibl",
        opts = {
            exclude = { filetypes = { 'dashboard' } }
        },
    },
    {
        "epwalsh/obsidian.nvim",
        version = "*",  -- recommended, use latest release instead of latest commit
        lazy = true,
        ft = "markdown"
    },
}
