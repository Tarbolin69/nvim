# My Nvim Configuration

This is the neovim config I use daily for coding or general writing. It works on [st](https://st.suckless.org/), so I'm pretty sure it'll work on any terminal.

When adding new plugins, you should first source packer.lua before running PackerSync.

# Plugins:

I use [packer](https://github.com/wbthomason/packer.nvim) to manage my plugins. I could move to lazy, yes, but I find the startup time improvement to not be worth the hassle of having to migrate and reconfigure my whole system.

- Graphical & UI
  - [Devicons](https://github.com/nvim-tree/nvim-web-devicons)
  - [Alpha](https://github.com/goodlird/alpha-nvim)
  - [Indent Blankline](https://github.com/lukas-reineke/indent-blankline.nvim)
  - [Glow](https://github.com/ellisonleao/glow.nvim)
  - [Dressing](https://github.com/stevearc/dressing.nvim)
  - [Tokyonight](https://github.com/folke/tokyonight.nvim)
  - [CSS Color](https://github.com/ap/vim-css-color)
  - [TreeSitter](https://github.com/nvim-treesitter/nvim-treesitter)
  - [Lunaline](https://github.com/nvim-lualine/lualine.nvim)
- Writing
  - [Zen Mode](https://github.com/folke/zen-mode.nvim)
  - [Twilight](https://github.com/folke/twilight.nvim)
  - [Pencil](https://github.com/preservim/vim-pencil)
  - [Ditto](https://github.com/dbmrq/vim-ditto)
  - [Table Mode](https://github.com/dhruvasagar/vi-table-mode)
  - [Vimtex](https://github.com/lervag/vimtex)
- Fuzzy & Movement
  - [Harpoon](https://github.com/theprimeagen/harpoon)
  - [Telescope](https://github.com/nvim-telescope/telescope.nvim)
  - [Telescope File Browser](https://github.com/nvim-telescope/telescope-file-browser.nvim)
  - [Telescope Repo](https://github.com/cljoly/telescope-repo.nvim)
- Github, History & LSP
  - [TODO Comments](https://github.com/folke/todo-comments)
  - [Trouble](https://github.com/folke/trouble.nvim)
  - [Undo Tree](https://github.com/mbbill/undotree)
  - [Playground](https://github.com/nvim-treesitter/playground)
  - [Fugitive](https://github.com/tpope/vim-fugitive)
  - [LSP Zero](https://github.com/lsp-zerp.nvim)
- God why is the config for this plugin so big
  - [Neotree](https://github.com/nvim-neo-tree/neo-tree.nvim)

# Install

```shell
mv ~/.config/nvim/ ~/.config/nvim.bak
git clone https://github.com/Tarbolin69/nvim.git ~/.config/nvim
```
