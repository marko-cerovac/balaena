local c     = require 'balaena.colors'
local utils = require 'balaena.utils'

local M = {}


M.editor = {
    Normal       = { bg = c.bg, fg = c.fg },
    NormalFloat  = { bg = c.bg, fg = c.fg },
    Visual       = { bg = c.selection },
    CursorLine   = { bg = c.cursorline },
    LineNr       = { fg = c.line_nr },
    CursorLineNr = { fg = c.fg },
    Search       = { fg = c.bg, bg = c.light_0 },
    CurSearch    = { fg = c.bg, bg = c.yellow }, -- TODO: change
    FloatBorder  = { fg = c.border, bg = c.bg },
    WinSeparator = { fg = c.separator },
    Cursor       = { fg = c.cursor },
    TermCursor   = { fg = c.cursor },
    PMenuSel     = { fg = c.grad_2, reverse = true },


    DiagnosticError          = { fg = c.lsp.err },
    DiagnosticWarn           = { fg = c.lsp.warn },
    DiagnosticInfo           = { fg = c.lsp.info },
    DiagnosticHint           = { fg = c.lsp.hint },
    DiagnosticSignError      = { link = "DiagnosticError" },
    DiagnosticSignWarn       = { link = "DiagnosticWarn" },
    DiagnosticSignInfo       = { link = "DiagnosticInfo" },
    DiagnosticSignHint       = { link = "DiagnosticHint" },
    DiagnosticFloatingError  = { link = "DiagnosticError" },
    DiagnosticFloatingWarn   = { link = "DiagnosticWarn" },
    DiagnosticFloatingInfo   = { link = "DiagnosticInfo" },
    DiagnosticFloatingHint   = { link = "DiagnosticHint" },
    DiagnosticUnderlineError = { undercurl = true, sp = c.lsp.err },
    DiagnosticUnderlineWarn  = { undercurl = true, sp = c.lsp.warn },
    DiagnosticUnderlineInfo  = { undercurl = true, sp = c.lsp.info },
    DiagnosticUnderlineHint  = { undercurl = true, sp = c.lsp.hint }
}


M.treesitter = {
    ['@operator']      = { fg = c.grad_3 },
    ['@punctuation']   = { fg = c.grad_3 },
    ['@keyword']       = { fg = c.grad_3 },
    ['@number']        = { fg = c.orange },
    ['@variable']      = { fg = c.light_1 },
    ['@property']      = { fg = c.snow_0 },
    ['@function']      = { fg = c.grad_1 },
    ['@function.call'] = { fg = c.grad_1 },
    ['@string']        = { fg = c.green },
    ['@type']          = { fg = c.grad_2 },
    ['@constructor']   = { fg = c.grad_2 },
    ['@type.builtin']  = { fg = c.grad_2 },
}


M.plugins = {
    NoiceCmdlinePopupTitle        = { fg = c.light_1 },
    NoiceCmdlinePopupBorder       = { fg = c.border },
    NoiceCmdlinePopupBorderSearch = { fg = c.border },
    TelescopeBorder               = { fg = c.border },
    CmpItemAbbr                   = { fg = c.fg },
    CmpItemAbbrMatch              = { fg = c.light_0, bold = true },
    CmpItemAbbrMatchFuzzy         = { link = "CmpItemAbbrMatch" },
    CmpItemKind                   = { fg = c.grad_0 },
    CmpItemMenu                   = { fg = c.grad_3 },
    GitSignsAdd                   = { fg = c.git.add },
    GitSignsChange                = { fg = c.git.modify },
    GitSignsDelete                = { fg = c.git.remove },
    -- NeogitDiffAdd                 = { bg = utils.blend(c.git.add, c.bg, 0.6)},
    -- NeogitDiffDelete              = { bg = utils.blend(c.git.remove, c.bg, 0.6)},
    NeogitDiffAdd                 = { fg = c.bg, bg = c.git.add },
    NeogitDiffDelete              = { fg = c.bg, bg = c.git.remove },
}

return M
