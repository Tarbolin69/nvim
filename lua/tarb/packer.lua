return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- Dashboard

    use {
        'goolord/alpha-nvim',
        config = function ()
            require'alpha'.setup(require'alpha.themes.dashboard'.config)
        end
    }
    -- Graphical and UI
    use 'nvim-tree/nvim-web-devicons'
    use 'ap/vim-css-color'
    use "lukas-reineke/indent-blankline.nvim"
    use {"ellisonleao/glow.nvim", config = function() require("glow").setup() end}
    use {"stevearc/dressing.nvim"}
    use 'folke/tokyonight.nvim'
    use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }
    -- Writing
    use {
        "folke/zen-mode.nvim",
        ft = {'markdown', 'html', 'tex', 'text' },
        config = function()
            require("zen-mode").setup {
                window = {
                    backdrop = 0.95, -- shade the backdrop of the Zen window. Set to 1 to keep the same as Normal
                    width = 120, -- width of the Zen window
                    height = 1, -- height of the Zen window
                    options = {
                        signcolumn = "no", -- disable signcolumn
                        number = false, -- disable number column
                        relativenumber = false, -- disable relative numbers
                        -- cursorline = false, -- disable cursorline
                        -- cursorcolumn = false, -- disable cursor column
                        -- foldcolumn = "0", -- disable fold column
                        -- list = false, -- disable whitespace characters
                    },
                },
                plugins = {
                    -- disable some global vim options (vim.o...)
                    -- comment the lines to not apply the options
                    options = {
                        enabled = true,
                        ruler = false, -- disables the ruler text in the cmd line area
                        showcmd = false, -- disables the command in the last line of the screen
                    },
                    twilight = { enabled = true }, -- enable to start Twilight when zen mode opens
                    gitsigns = { enabled = false }, -- disables git signs
                    tmux = { enabled = false }, -- disables the tmux statusline
                },
                on_open = function(win)
                end,
                on_close = function()
                end,
            }
        end
    }
    use {
        "folke/twilight.nvim",
        ft = {'markdown', 'html', 'tex', 'text' },
        config = function()
            require("twilight").setup {
                -- your configuration comes here
                -- or leave it empty to use the default settings
                -- refer to the configuration section below
            }
        end
    }
    use {
        "preservim/vim-pencil",
        ft = {'markdown', 'html', 'tex', 'text' },
     }
    use {"lervag/vimtex"}
    -- Fuzzy & Movement
    use ('theprimeagen/harpoon')
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    use ("nvim-telescope/telescope-file-browser.nvim")
    use ("cljoly/telescope-repo.nvim")
    use ("tpope/vim-surround")
    use ("christoomey/vim-tmux-navigator")
    -- Github, History & LSP
    use {
        "folke/todo-comments.nvim",
        requires = "nvim-lua/plenary.nvim",
        config = function()
            require("todo-comments").setup {
                -- your configuration comes here
                -- or leave it empty to use the default settings
                -- refer to the configuration section below
            }
        end
    }
    use {
        "folke/trouble.nvim",
        requires = "nvim-tree/nvim-web-devicons",
        config = function()
            require("trouble").setup {
                -- your configuration comes here
                -- or leave it empty to use the default settings
                -- refer to the configuration section below
            }
        end
    }
    use ('mattn/emmet-vim')
    use ('mbbill/undotree')
    use('nvim-treesitter/playground')
    use ('tpope/vim-fugitive')
    use {
        'VonHeikemen/lsp-zero.nvim',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},
            -- Autocompletion
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-buffer'},
            {'hrsh7th/cmp-path'},
            {'saadparwaiz1/cmp_luasnip'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'hrsh7th/cmp-nvim-lua'},
            -- Snippets
            {'L3MON4D3/LuaSnip'},
            {'rafamadriz/friendly-snippets'},
        }
    }
end)
