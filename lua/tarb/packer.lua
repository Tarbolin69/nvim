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
    use "lukas-reineke/indent-blankline.nvim"
    use {"ellisonleao/glow.nvim", config = function() require("glow").setup() end}
    use {"stevearc/dressing.nvim"}
    use 'folke/tokyonight.nvim'
    use "ap/vim-css-color"
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
    use {
        "dbmrq/vim-ditto",
        ft = {'markdown', 'html', 'tex', 'text' },
    }
    use {"dhruvasagar/vim-table-mode"}
    use {"lervag/vimtex"}
    -- Fuzzy & Movement
    use ('theprimeagen/harpoon')
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    use ("nvim-telescope/telescope-file-browser.nvim")
    use ("cljoly/telescope-repo.nvim")
    use ("tpope/vim-surround")
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
    -- This fucking thing right here
    use {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v2.x",
        requires = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
            "MunifTanjim/nui.nvim",
            {
                -- only needed if you want to use the commands with "_with_window_picker" suffix
                's1n7ax/nvim-window-picker',
                tag = "v1.*",
                config = function()
                    require'window-picker'.setup({
                        autoselect_one = true,
                        include_current = false,
                        filter_rules = {
                            -- filter using buffer options
                            bo = {
                                -- if the file type is one of following, the window will be ignored
                                filetype = { 'neo-tree', "neo-tree-popup", "notify" },

                                -- if the buffer type is one of following, the window will be ignored
                                buftype = { 'terminal', "quickfix" },
                            },
                        },
                        other_win_hl_color = '#e35e4f',
                    })
                end,
            }
        },
        config = function ()
            -- Unless you are still migrating, remove the deprecated commands from v1.x
            vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])

            -- If you want icons for diagnostic errors, you'll need to define them somewhere:
            vim.fn.sign_define("DiagnosticSignError",
            {text = " ", texthl = "DiagnosticSignError"})
            vim.fn.sign_define("DiagnosticSignWarn",
            {text = " ", texthl = "DiagnosticSignWarn"})
            vim.fn.sign_define("DiagnosticSignInfo",
            {text = " ", texthl = "DiagnosticSignInfo"})
            vim.fn.sign_define("DiagnosticSignHint",
            {text = "", texthl = "DiagnosticSignHint"})
            -- NOTE: this is changed from v1.x, which used the old style of highlight groups
            -- in the form "LspDiagnosticsSignWarning"

            require("neo-tree").setup({
                close_if_last_window = false, -- Close Neo-tree if it is the last window left in the tab
                popup_border_style = "rounded",
                enable_git_status = true,
                enable_diagnostics = true,
                sort_case_insensitive = false, -- used when sorting files and directories in the tree
                sort_function = nil , -- use a custom function for sorting files and directories in the tree
                -- sort_function = function (a,b)
                    --       if a.type == b.type then
                    --           return a.path > b.path
                    --       else
                    --           return a.type > b.type
                    --       end
                    --   end , -- this sorts files and directories descendantly
                    default_component_configs = {
                        container = {
                            enable_character_fade = true
                        },
                        indent = {
                            indent_size = 2,
                            padding = 1, -- extra padding on left hand side
                            -- indent guides
                            with_markers = true,
                            indent_marker = "│",
                            last_indent_marker = "└",
                            highlight = "NeoTreeIndentMarker",
                            -- expander config, needed for nesting files
                            with_expanders = nil, -- if nil and file nesting is enabled, will enable expanders
                            expander_collapsed = "",
                            expander_expanded = "",
                            expander_highlight = "NeoTreeExpander",
                        },
                        icon = {
                            folder_closed = "",
                            folder_open = "",
                            folder_empty = "ﰊ",
                            -- The next two settings are only a fallback, if you use nvim-web-devicons and configure default icons there
                            -- then these will never be used.
                            default = "*",
                            highlight = "NeoTreeFileIcon"
                        },
                        modified = {
                            symbol = "[+]",
                            highlight = "NeoTreeModified",
                        },
                        name = {
                            trailing_slash = false,
                            use_git_status_colors = true,
                            highlight = "NeoTreeFileName",
                        },
                        git_status = {
                            symbols = {
                                -- Change type
                                added     = "", -- or "✚", but this is redundant info if you use git_status_colors on the name
                                modified  = "", -- or "", but this is redundant info if you use git_status_colors on the name
                                deleted   = "✖",-- this can only be used in the git_status source
                                renamed   = "",-- this can only be used in the git_status source
                                -- Status type
                                untracked = "",
                                ignored   = "",
                                unstaged  = "",
                                staged    = "",
                                conflict  = "",
                            }
                        },
                    },
                    window = {
                        position = "left",
                        width = 40,
                        mapping_options = {
                            noremap = true,
                            nowait = true,
                        },
                        mappings = {
                            ["<space>"] = {
                                "toggle_node",
                                nowait = false, -- disable `nowait` if you have existing combos starting with this char that you want to use
                            },
                            ["<2-LeftMouse>"] = "open",
                            ["<cr>"] = "open",
                            ["<esc>"] = "revert_preview",
                            ["P"] = { "toggle_preview", config = { use_float = true } },
                            ["S"] = "open_split",
                            ["s"] = "open_vsplit",
                            -- ["S"] = "split_with_window_picker",
                            -- ["s"] = "vsplit_with_window_picker",
                            ["t"] = "open_tabnew",
                            -- ["<cr>"] = "open_drop",
                            -- ["t"] = "open_tab_drop",
                            ["w"] = "open_with_window_picker",
                            --["P"] = "toggle_preview", -- enter preview mode, which shows the current node without focusing
                            ["C"] = "close_node",
                            ["z"] = "close_all_nodes",
                            --["Z"] = "expand_all_nodes",
                            ["a"] = {
                                "add",
                                -- some commands may take optional config options, see `:h neo-tree-mappings` for details
                                config = {
                                    show_path = "none" -- "none", "relative", "absolute"
                                }
                            },
                            ["A"] = "add_directory", -- also accepts the optional config.show_path option like "add".
                            ["d"] = "delete",
                            ["r"] = "rename",
                            ["y"] = "copy_to_clipboard",
                            ["x"] = "cut_to_clipboard",
                            ["p"] = "paste_from_clipboard",
                            ["c"] = "copy", -- takes text input for destination, also accepts the optional config.show_path option like "add":
                            -- ["c"] = {
                                --  "copy",
                                --  config = {
                                    --    show_path = "none" -- "none", "relative", "absolute"
                                    --  }
                                    --}
                                    ["m"] = "move", -- takes text input for destination, also accepts the optional config.show_path option like "add".
                                    ["q"] = "close_window",
                                    ["R"] = "refresh",
                                    ["?"] = "show_help",
                                    ["<"] = "prev_source",
                                    [">"] = "next_source",
                                }
                            },
                            nesting_rules = {},
                            filesystem = {
                                filtered_items = {
                                    visible = false, -- when true, they will just be displayed differently than normal items
                                    hide_dotfiles = true,
                                    hide_gitignored = true,
                                    hide_hidden = true, -- only works on Windows for hidden files/directories
                                    hide_by_name = {
                                        --"node_modules"
                                    },
                                    hide_by_pattern = { -- uses glob style patterns
                                    --"*.meta",
                                    --"*/src/*/tsconfig.json",
                                },
                                always_show = { -- remains visible even if other settings would normally hide it
                                --".gitignored",
                            },
                            never_show = { -- remains hidden even if visible is toggled to true, this overrides always_show
                            --".DS_Store",
                            --"thumbs.db"
                        },
                        never_show_by_pattern = { -- uses glob style patterns
                        --".null-ls_*",
                    },
                },
                follow_current_file = false, -- This will find and focus the file in the active buffer every
                -- time the current file is changed while the tree is open.
                group_empty_dirs = false, -- when true, empty folders will be grouped together
                hijack_netrw_behavior = "open_default", -- netrw disabled, opening a directory opens neo-tree
                -- in whatever position is specified in window.position
                -- "open_current",  -- netrw disabled, opening a directory opens within the
                -- window like netrw would, regardless of window.position
                -- "disabled",    -- netrw left alone, neo-tree does not handle opening dirs
                use_libuv_file_watcher = false, -- This will use the OS level file watchers to detect changes
                -- instead of relying on nvim autocmd events.
                window = {
                    mappings = {
                        ["<bs>"] = "navigate_up",
                        ["."] = "set_root",
                        ["H"] = "toggle_hidden",
                        ["/"] = "fuzzy_finder",
                        ["D"] = "fuzzy_finder_directory",
                        ["f"] = "filter_on_submit",
                        ["<c-x>"] = "clear_filter",
                        ["[g"] = "prev_git_modified",
                        ["]g"] = "next_git_modified",
                    }
                }
            },
            buffers = {
                follow_current_file = true, -- This will find and focus the file in the active buffer every
                -- time the current file is changed while the tree is open.
                group_empty_dirs = true, -- when true, empty folders will be grouped together
                show_unloaded = true,
                window = {
                    mappings = {
                        ["bd"] = "buffer_delete",
                        ["<bs>"] = "navigate_up",
                        ["."] = "set_root",
                    }
                },
            },
            git_status = {
                window = {
                    position = "float",
                    mappings = {
                        ["A"]  = "git_add_all",
                        ["gu"] = "git_unstage_file",
                        ["ga"] = "git_add_file",
                        ["gr"] = "git_revert_file",
                        ["gc"] = "git_commit",
                        ["gp"] = "git_push",
                        ["gg"] = "git_commit_and_push",
                    }
                }
            }
        })

        vim.cmd([[nnoremap \ :Neotree reveal<cr>]])
    end
}

end)
