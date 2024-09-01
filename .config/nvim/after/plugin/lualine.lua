require('lualine').setup {
  options = {
    theme = {
      normal = {
        a = {fg = "#260f07", bg = "#907f59"},
        b = {fg = "#260f07", bg = "#5c4b34"},
        c = {fg = "#7f351c", bg = "#00000000"},
        x = {fg = "#7f351c", bg = "#00000000"},
        y = {fg = "#260f07", bg = "#5c4b34"},
        z = {fg = "#260f07", bg = "#907f59"}
      }
    },
    icons_enabled = true,
    theme = 'auto',
    component_separators = {left = '', right = ''},
    -- component_separators = { left = "⮞", right = "⮜"},
    section_separators = {left = '', right = ''},
    disabled_filetypes = {
      statusline = {},
      winbar = {},
    },
    ignore_focus = {},
    always_divide_middle = true,
    globalstatus = true,
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
    }
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    -- lualine_c = {'filename', "filetype"},
    lualine_c = {'filename'},
    lualine_x = {'encoding'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  winbar = {},
  inactive_winbar = {},
  extensions = {}
}
