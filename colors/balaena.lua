local c = require 'balaena.colors'


local editor     = {}
local treesitter = {}
local plugins    = {}


vim.g.colors_name = "balaena"


editor['Normal']       = { bg = c.bg, fg = c.fg }
editor['NormalFloat']  = { bg = c.bg, fg = c.fg }
editor['Visual']       = { bg = c.selection }
editor['CursorLine']   = { bg = c.cursorline_bg }
editor['LineNr']       = { fg = c.line_nr }
editor['CursorLineNr'] = { fg = c.fg }
editor['Search']       = { fg = c.bg, bg = c.snow_0 }
editor['CurSearch']    = { fg = c.bg, bg = c.aurora_2 } -- TODO: change
editor['FloatBorder']  = { fg = c.border, bg = c.bg }
editor['WinSeparator'] = { fg = c.border_blend }


treesitter['@operator']      = { fg = c.frost_3 }
treesitter['@keyword']       = { fg = c.frost_3 }
treesitter['@number']        = { fg = c.aurora_1 }
treesitter['@variable']      = { fg = c.snow_1 }
treesitter['@property']      = { fg = c.fg1 }
treesitter['@function']      = { fg = c.frost_1 }
treesitter['@function.call'] = { fg = c.frost_1 }
treesitter['@string']        = { fg = c.aurora_3 }
treesitter['@type']          = { fg = c.frost_2 }
treesitter['@constructor']   = { fg = c.frost_2 }
treesitter['@type.builtin']  = { fg = c.frost_2 }


plugins['NoiceCmdlinePopupTitle']        = { fg = c.snow_1 }
plugins['NoiceCmdlinePopupBorder']       = { fg = c.border }
plugins['NoiceCmdlinePopupBorderSearch'] = { fg = c.border }
plugins['TelescopeBorder']               = { fg = c.border }


plugins['CmpItemSelected']       = { fg = c.frost_2, reverse = true }
plugins['CmpItemAbbr']           = { fg = c.fg }
plugins['CmpItemAbbrMatch']      = { fg = c.snow_0, bold = true }
plugins['CmpItemAbbrMatchFuzzy'] = { link = "CmpItemAbbrMatch" }
plugins['CmpItemKind']           = { fg = c.frost_2 }
plugins['CmpItemMenu']           = { fg = c.frost_3 }

for k, v in pairs(editor) do
    vim.api.nvim_set_hl(0, k, v)
end

for k, v in pairs(treesitter) do
    vim.api.nvim_set_hl(0, k, v)
end

for k, v in pairs(plugins) do
    vim.api.nvim_set_hl(0, k, v)
end
