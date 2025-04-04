local c  = require 'balaena.colors'

local M  = {}

M.editor = {
    Normal       = { bg = c.bg, fg = c.fg_2 },
    NormalFloat  = { bg = c.bg, fg = c.fg_2 },

    ColorColumn  = { bg = c.cursor_ln },
    Conceal      = { fg = c.stealth_0 },

    ErrorMsg     = { fg = c.err },
    WarningMsg   = { fg = c.warn },
    Folded       = { fg = c.stealth_2 },
    NonText      = { fg = c.stealth_0 },
    SignColumn   = { fg = c.fg_0 },
    Whitespace   = { fg = c.stealth_0 },

    StatusLine   = { fg = c.fg_1, bg = c.bg },
    StatusLineNC = { fg = c.stealth_0 },
    Ignore       = { fg = c.stealth_0 },

    Title        = { fg = c.fg_2 },

    Visual       = { bg = c.selection },
    CursorLine   = { bg = c.cursor_ln },
    CursorColumn = { link = "CursorLine" },
    LineNr       = { fg = c.stealth_1 },
    CursorLineNr = { fg = c.fg_2 },
    Search       = { fg = c.bg, bg = c.fg_0 },
    IncSearch    = { fg = c.bg, bg = c.fg_0, bold = true},
    CurSearch    = { fg = c.bg, bg = c.yellow },
    FloatBorder  = { fg = c.border_2, bg = c.bg },
    WinSeparator = { fg = c.border_0 },
    Cursor       = { fg = c.cursor },
    TermCursor   = { fg = c.cursor },

    PMenu        = { fg = c.fg_1, bg = c.bg_alt },
    PMenuSel     = { fg = c.grad_1, reverse = true },
    PMenuThumb   = { bg = c.stealth_1 },

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
    DiagnosticUnderlineHint  = { undercurl = true, sp = c.hint },
    DiagnosticUnnecessary    = { fg = c.stealth_0, undercurl = true, sp = c.fg_1 },
}


M.treesitter = {
    ['@comment']       = { fg = c.stealth_2 },
    ['@operator']      = { fg = c.grad_0 },
    ['@punctuation']   = { fg = c.grad_0 },
    ['@keyword']       = { fg = c.grad_0 },
    ['@type']          = { fg = c.grad_1 },
    ['@constructor']   = { fg = c.grad_1 },
    ['@type.builtin']  = { fg = c.grad_1 },
    ['@number']        = { fg = c.orange },
    ['@boolean']       = { fg = c.orange },
    ['@character']     = { fg = c.orange },
    ['@variable']      = { fg = c.fg_2 },
    ['@property']      = { fg = c.fg_0 },
    ['@constant']      = { fg = c.fg_1 },
    ['@function']      = { fg = c.grad_3 },
    ['@function.call'] = { fg = c.grad_3 },
    ['@string']        = { fg = c.green },
    ['@module']        = { fg = c.grad_2 },
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

vim.g.terminal_color_0 = c.stealth_0
vim.g.terminal_color_1 = c.red
vim.g.terminal_color_2 = c.green
vim.g.terminal_color_3 = c.yellow
vim.g.terminal_color_4 = c.grad_0
vim.g.terminal_color_5 = c.purple
vim.g.terminal_color_6 = c.grad_3
vim.g.terminal_color_7 = c.fg_1
vim.g.terminal_color_8 = c.stealth_0
vim.g.terminal_color_9 = c.red
vim.g.terminal_color_10 = c.green
vim.g.terminal_color_11 = c.yellow
vim.g.terminal_color_12 = c.grad_0
vim.g.terminal_color_13 = c.purple
vim.g.terminal_color_14 = c.grad_3
vim.g.terminal_color_15 = c.fg_2

return M
