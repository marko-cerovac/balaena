package.loaded["balaena.colors"] = nil

local c = require 'balaena.colors'


local editor     = {}
local treesitter = {}
local plugins    = {}


vim.g.colors_name = "balaena"


editor['Normal']                   = { bg = c.bg, fg = c.fg }
editor['NormalFloat']              = { bg = c.bg, fg = c.fg }
editor['Visual']                   = { bg = c.selection }
editor['CursorLine']               = { bg = c.cursorline }
editor['LineNr']                   = { fg = c.line_nr }
editor['CursorLineNr']             = { fg = c.fg }
editor['Search']                   = { fg = c.bg, bg = c.light_0 }
editor['CurSearch']                = { fg = c.bg, bg = c.yellow } -- TODO: change
editor['FloatBorder']              = { fg = c.border, bg = c.bg }
editor['WinSeparator']             = { fg = c.separator }
editor['PMenuSel']                 = { fg = c.grad_2, reverse = true }

editor['DiagnosticError']          = { fg = c.lsp.err }
editor['DiagnosticWarn']           = { fg = c.lsp.warn }
editor['DiagnosticInfo']           = { fg = c.lsp.info }
editor['DiagnosticHint']           = { fg = c.lsp.hint }
editor['DiagnosticSignError']      = { link = "DiagnosticError" }
editor['DiagnosticSignWarn']       = { link = "DiagnosticWarn" }
editor['DiagnosticSignInfo']       = { link = "DiagnosticInfo" }
editor['DiagnosticSignHint']       = { link = "DiagnosticHint" }
editor['DiagnosticFloatingError']  = { link = "DiagnosticError" }
editor['DiagnosticFloatingWarn']   = { link = "DiagnosticWarn" }
editor['DiagnosticFloatingInfo']   = { link = "DiagnosticInfo" }
editor['DiagnosticFloatingHint']   = { link = "DiagnosticHint" }
editor['DiagnosticUnderlineError'] = { undercurl = true, sp = c.lsp.err }
editor['DiagnosticUnderlineWarn']  = { undercurl = true, sp = c.lsp.warn }
editor['DiagnosticUnderlineInfo']  = { undercurl = true, sp = c.lsp.info }
editor['DiagnosticUnderlineHint']  = { undercurl = true, sp = c.lsp.hint }


treesitter['@operator']      = { fg = c.grad_3 }
treesitter['@punctuation']   = { fg = c.grad_3 }
treesitter['@keyword']       = { fg = c.grad_3 }
treesitter['@number']        = { fg = c.orange }
treesitter['@variable']      = { fg = c.light_1 }
treesitter['@property']      = { fg = c.fg1 }
treesitter['@function']      = { fg = c.grad_1 }
treesitter['@function.call'] = { fg = c.grad_1 }
treesitter['@string']        = { fg = c.green }
treesitter['@type']          = { fg = c.grad_2 }
treesitter['@constructor']   = { fg = c.grad_2 }
treesitter['@type.builtin']  = { fg = c.grad_2 }


plugins['NoiceCmdlinePopupTitle']        = { fg = c.light_1 }
plugins['NoiceCmdlinePopupBorder']       = { fg = c.border }
plugins['NoiceCmdlinePopupBorderSearch'] = { fg = c.border }
plugins['TelescopeBorder']               = { fg = c.border }


plugins['CmpItemAbbr']           = { fg = c.fg }
plugins['CmpItemAbbrMatch']      = { fg = c.light_0, bold = true }
plugins['CmpItemAbbrMatchFuzzy'] = { link = "CmpItemAbbrMatch" }
plugins['CmpItemKind']           = { fg = c.grad_0 }
plugins['CmpItemMenu']           = { fg = c.grad_3 }


plugins['GitSignsAdd']    = { fg = c.git.add }
plugins['GitSignsChange'] = { fg = c.git.modify }
plugins['GitSignsDelete'] = { fg = c.git.remove }

for k, v in pairs(editor) do
    vim.api.nvim_set_hl(0, k, v)
end

for k, v in pairs(treesitter) do
    vim.api.nvim_set_hl(0, k, v)
end

for k, v in pairs(plugins) do
    vim.api.nvim_set_hl(0, k, v)
end
