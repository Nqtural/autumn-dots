local alpha = require("alpha")
local dashboard = require("alpha.themes.dashboard")

-- Set header
dashboard.section.header.val = {
    "",
    "",
    "",
    "",
    "                                         _.oo.",
    "                 _.u[[/;:,.         .odMMMMMM'",
    "              .o888UU[[[/;:-.  .o@P^    MMM^",
    "             oN88888UU[[[/;::-.        dP^",
    "            dNMMNN888UU[[[/;:--.   .o@P^",
    "           ,MMMMMMN888UU[[/;::-. o@^",
    "           NNMMMNN888UU[[[/~.o@P^",
    "           888888888UU[[[/o@^-..",
    "          oI8888UU[[[/o@P^:--..",
    "       .@^  YUU[[[/o@^;::---..",
    "     oMP     ^/o@P^;:::---..",
    "  .dMMM    .o@^ ^;::---...",
    " dMMMMMMM@^`       `^^^^",
    "YMMMUP^",
    " ^^",
}
-- "",
-- "",
-- "",
-- "",
-- "",
-- "",
-- "⠀⠀⣿⡇⠀⠀⢸⣿⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⠀⣼⡿⠀⣿⡇⣿⡇⠸⣿⡄⢸⣿⠀⣼⡿",
-- "⢾⣦⣿⡇⠀⠀⢸⣿⠀⢀⣤⣶⣶⣤⡀⠀⢸⣿⣾⠟⢁⣼⡿⠀⣿⡇⠀⠙⢿⣾⣿⣾⠟⠁",
-- "⠀⠙⣿⣷⣄⠀⢸⣿⠀⣾⣿⠁⠈⣿⣷⠀⢸⣿⣶⣶⣿⠏⠀⠀⣿⡇⠀⠀⠀⢸⣿",
-- "⠀⠀⣿⡏⠻⠃⢸⣿⠀⣿⣿⠀⠀⣿⣿⠀⢸⣿⠉⠉⠀⠀⠀⠀⣿⡇⠀⠀⠀⢸⣿",
-- "⠀⠀⣿⡇⠀⠀⢸⣿⠀⠘⢿⣷⣾⡿⠃⠀⢸⣿⠀⠀⠀⠀⠀⠀⣿⡇⠀⠀⠀⢸⣿",
-- "",
-- "",
-- "",
-- }

dashboard.section.header.opts.hl = "Keyword"

-- Set menu
dashboard.section.buttons.val = {
    dashboard.button( "e", "  > new file" , ":ene <BAR> startinsert <CR>"),
    dashboard.button( "f", "  > find file", ":Telescope find_files<CR>"),
    dashboard.button( "r", "  > recent"   , ":Telescope oldfiles<CR>"),
    dashboard.button( "s", "  > settings" , ":e $MYVIMRC | :cd %:p:h | split . | wincmd k | pwd<CR>"),
    dashboard.button( "q", "  > quit",      ":qa<CR>"),
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

-- Send config to alpha
alpha.setup(dashboard.opts)

-- Disable folding on alpha buffer
vim.cmd([[
    autocmd FileType alpha setlocal nofoldenable
]])
