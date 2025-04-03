local c  = require 'balaena.colors'

local M  = {}

M.editor = {
    Normal       = { bg = c.bg, fg = c.fg_2 },
    NormalFloat  = { bg = c.bg, fg = c.fg_2 },
    Visual       = { bg = c.selection },
    CursorLine   = { bg = c.cursorline },
    LineNr       = { fg = c.stealth_1 },
    CursorLineNr = { fg = c.fg_2 },
    Search       = { fg = c.bg, bg = c.fg_0 },
    CurSearch    = { fg = c.bg, bg = c.yellow }, -- TODO: change
    FloatBorder  = { fg = c.border_2, bg = c.bg },
    WinSeparator = { fg = c.border_0 },
    Cursor       = { fg = c.cursor },
    TermCursor   = { fg = c.cursor },
    PMenuSel     = { fg = c.grad_1, reverse = true },

    DiffAdd      = { fg = c.git.add, reverse = true },
    DiffChange   = { fg = c.git.modify },
    DiffDelete   = { fg = c.git.remove, reverse = true },
    DiffText     = { fg = c.git.modify, reverse = true },


    DiagnosticError          = { fg = c.err },
    DiagnosticWarn           = { fg = c.warn },
    DiagnosticInfo           = { fg = c.info },
    DiagnosticHint           = { fg = c.hint },
    DiagnosticSignError      = { link = "DiagnosticError" },
    DiagnosticSignWarn       = { link = "DiagnosticWarn" },
    DiagnosticSignInfo       = { link = "DiagnosticInfo" },
    DiagnosticSignHint       = { link = "DiagnosticHint" },
    DiagnosticFloatingError  = { link = "DiagnosticError" },
    DiagnosticFloatingWarn   = { link = "DiagnosticWarn" },
    DiagnosticFloatingInfo   = { link = "DiagnosticInfo" },
    DiagnosticFloatingHint   = { link = "DiagnosticHint" },
    DiagnosticUnderlineError = { undercurl = true, sp = c.err },
    DiagnosticUnderlineWarn  = { undercurl = true, sp = c.warn },
    DiagnosticUnderlineInfo  = { undercurl = true, sp = c.info },
    DiagnosticUnderlineHint  = { undercurl = true, sp = c.hint }
}


M.treesitter = {
    ['@operator']      = { fg = c.grad_0 },
    ['@comment']       = { fg = c.stealth_2 },
    ['@punctuation']   = { fg = c.grad_0 },
    ['@keyword']       = { fg = c.grad_0 },
    ['@number']        = { fg = c.orange },
    ['@boolean']       = { fg = c.orange },
    ['@variable']      = { fg = c.fg_2 },
    ['@property']      = { fg = c.fg_0 },
    ['@constant']      = { fg = c.fg_2 },
    ['@function']      = { fg = c.grad_2 },
    ['@function.call'] = { fg = c.grad_2 },
    ['@string']        = { fg = c.green },
    ['@type']          = { fg = c.grad_1 },
    ['@constructor']   = { fg = c.grad_1 },
    ['@type.builtin']  = { fg = c.grad_1 },
}

M.plugins = {
    NoiceCmdlinePopupTitle        = { fg = c.fg_1 },
    NoiceCmdlinePopupBorder       = { fg = c.border_2 },
    NoiceCmdlinePopupBorderSearch = { fg = c.border_2 },
    TelescopeBorder               = { fg = c.border_2 },
    CmpItemAbbr                   = { fg = c.fg_1 },
    CmpItemAbbrMatch              = { fg = c.fg_2, bold = true },
    CmpItemAbbrMatchFuzzy         = { link = "CmpItemAbbrMatch" },
    CmpItemKind                   = { fg = c.grad_3 },
    CmpItemMenu                   = { fg = c.grad_0 },
    GitSignsAdd                   = { fg = c.git.add },
    GitSignsChange                = { fg = c.git.modify },
    GitSignsDelete                = { fg = c.git.remove },
    NeogitDiffAdd                 = { fg = c.bg, bg = c.git.add },
    NeogitDiffDelete              = { fg = c.bg, bg = c.git.remove },
    NeogitDiffAddHighlight        = { link = "NeogitDiffAdd" },
    NeogitDiffDeleteHighlight     = { link = "NeogitDiffDelete" },
    NeogitDiffAddCursor           = { fg = c.git.add },
    NeogitDiffDeleteCursor        = { fg = c.git.remove },
    NeogitDiffAdditions           = { fg = c.git.add },
    NeogitDiffDeletions           = { fg = c.git.remove },
    NeogitCommitViewHeader        = { fg = c.yellow },
    NeogitCommitViewDescription   = { fg = c.grad_0 },
}

return M
