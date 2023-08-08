local alpha = require("alpha")
local dashboard = require("alpha.themes.dashboard")

-- Set header
--dashboard.section.header.val = {
--    "                                                     ",
--    "  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ",
--    "  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ",
--    "  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ",
--    "  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ",
--    "  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
--    "  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
--    "                                                     ",
--}

dashboard.section.header.val = {
     "████████╗ █████╗ ██████╗ ██████╗  ██████╗ ██╗     ██╗███╗   ██╗ ██████╗ █████╗ ",
     "╚══██╔══╝██╔══██╗██╔══██╗██╔══██╗██╔═══██╗██║     ██║████╗  ██║██╔════╝██╔══██╗",
     "   ██║   ███████║██████╔╝██████╔╝██║   ██║██║     ██║██╔██╗ ██║███████╗╚██████║",
     "   ██║   ██╔══██║██╔══██╗██╔══██╗██║   ██║██║     ██║██║╚██╗██║██╔═══██╗╚═══██║",
     "   ██║   ██║  ██║██║  ██║██████╔╝╚██████╔╝███████╗██║██║ ╚████║╚██████╔╝█████╔╝",
     "   ╚═╝   ╚═╝  ╚═╝╚═╝  ╚═╝╚═════╝  ╚═════╝ ╚══════╝╚═╝╚═╝  ╚═══╝ ╚═════╝ ╚════╝ ",
}
-- Set menu
dashboard.section.buttons.val = {
    dashboard.button( "e", "  Nuevo archivo" , ":ene <BAR> startinsert <CR>"),
    dashboard.button( "f", "  Encontrar projecto", ":cd $HOME/Programming| Telescope find_files<CR>"),
    dashboard.button( "r", "  Reciente"   , ":Telescope oldfiles<CR>"),
    dashboard.button( "s", "  Ajustes" , ":e ~/.config/nvim/lua/tarb/packer.lua <CR>"),
    dashboard.button( "q", "  Cerrar NVIM", ":qa<CR>"),
}

-- Set footer
--   NOTE: This is currently a feature in my fork of alpha-nvim (opened PR #21, will update snippet if added to main)
--   To see test this yourself, add the function as a dependecy in packer and uncomment the footer lines
--   ```init.lua
--   return require('packer').startup(function()
--       use 'wbthomason/packer.nvim'
--       use {
--           'goolord/alpha-nvim', branch = 'feature/startify-fortune',
--           requires = {'BlakeJC94/alpha-nvim-fortune'},
--           config = function() require("config.alpha") end
--       }
--   end)
--   ```
-- local fortune = require("alpha.fortune")
-- dashboard.section.footer.val = fortune()

---- Set footer - FORTUNES
--local handle = assert(io.popen('fortune -s'))
--local fortune = handle:read("*all")
--handle:close()
--dashboard.section.footer.val = fortune
--dashboard.section.header.opts.hl = "Title"
--dashboard.section.buttons.opts.hl = "Debug"
--dashboard.section.footer.opts.hl = "Conceal"
--dashboard.config.opts.noautocmd = true


dashboard.section.footer.val = {
  "                       ",
  "Sólo la magia salvará tu terrible código  ",
}

-- Send config to alpha
alpha.setup(dashboard.opts)

-- Disable folding on alpha buffer
vim.cmd([[
    autocmd FileType alpha setlocal nofoldenable
]])
