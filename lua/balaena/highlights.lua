local u = require 'balaena.utils'
local c = require 'balaena.colors'


local M  = {}

M.editor = {
    Normal        = { bg = c.bg, fg = c.fg_2 },
    NormalFloat   = { bg = c.bg, fg = c.fg_2 },

    FloatBorder   = { fg = c.border_2, bg = c.bg },
    WinSeparator  = { fg = c.border_0 },
    Cursor        = { fg = c.cursor },
    TermCursor    = { fg = c.cursor },

    Conceal       = { fg = c.stealth_0 },
    StatusLine    = { fg = c.fg_1, bg = c.bg },
    StatusLineNC  = { fg = c.stealth_0 },
    Visual        = { bg = c.selection },
    CursorLine    = { bg = c.cursor_ln },
    CursorColumn  = { link = "CursorLine" },
    ColorColumn   = { bg = c.cursor_ln },

    PMenu         = { fg = c.fg_1, bg = c.bg_alt_1 },
    PMenuSel      = { fg = c.grad_1, reverse = true },
    PMenuThumb    = { bg = c.stealth_1 },
    PMenuKind     = { fg = c.grad_2 },

    LineNr        = { fg = c.stealth_1 },
    CursorLineNr  = { fg = c.fg_2 },
    Search        = { fg = c.bg, bg = c.fg_0 },
    IncSearch     = { fg = c.bg, bg = c.fg_0, bold = true },
    CurSearch     = { fg = c.bg, bg = c.yellow },

    MatchParen    = { fg = c.yellow, bold = true },
    SpecialKey    = { fg = c.grad_3 },
    ErrorMsg      = { fg = c.err },
    WarningMsg    = { fg = c.warn },
    Folded        = { fg = c.stealth_2 },
    NonText       = { fg = c.stealth_0 },
    SignColumn    = { fg = c.fg_0 },
    Whitespace    = { fg = c.stealth_0 },
    MoreMsg       = { fg = c.fg_1 },
    Ignore        = { fg = c.stealth_0 },
    FloatTitle    = { fg = c.fg_2 },
    Title         = { fg = c.fg_2 },
    -- qfFileName
    -- qfLineNr

    healthError   = { fg = c.err },
    healthWarning = { fg = c.warn },
    healthSuccess = { fg = c.warn },

    DiffAdd       = { fg = c.git.add, reverse = true },
    DiffChange    = { fg = c.git.modify },
    DiffDelete    = { fg = c.git.remove, reverse = true },
    DiffText      = { fg = c.git.modify, reverse = true },


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

    -- LspReferenceText            = { bg = u.blend(c.grad_1, c.bg, 0.8) }, -- used for highlighting "text" references
    -- LspReferenceRead            = { bg = u.blend(c.red, c.bg, 0.8) }, -- used for highlighting "read" references
    -- LspReferenceWrite           = { bg = u.blend(c.green, c.bg, 0.8) }, -- used for highlighting "write" references
}


M.syntax = {
    Character  = { fg = c.red },
    Constant   = { fg = c.fg_1 },
    Delimiter  = { fg = c.grad_0 },
    Function   = { fg = c.grad_3 },
    Identifier = { fg = c.fg_2 },
    Keyword    = { fg = c.grad_0 },
    Operator   = { fg = c.grad_0 },
    PreProc    = { fg = c.grad_0 },
    Special    = { fg = c.grad_3 },
    String     = { fg = c.green },
    Type       = { fg = c.grad_1 },
    Statement  = { fg = c.grad_0 },


    -- treesitter highlights
    ['@comment']       = { fg = c.stealth_2, italic = true },
    ['@operator']      = { fg = c.grad_0, },
    ['@punctuation']   = { fg = c.grad_0 },
    ['@keyword']       = { fg = c.grad_0 },
    ['@type']          = { fg = c.grad_1 },
    ['@constructor']   = { fg = c.grad_1 },
    ['@type.builtin']  = { fg = c.grad_1 },
    ['@number']        = { fg = c.orange },
    ['@number.float']  = { fg = c.orange },
    ['@boolean']       = { fg = c.orange },
    ['@character']     = { fg = c.orange },
    ['@variable']      = { fg = c.fg_2 },
    ['@property']      = { fg = c.fg_0 },
    ['@constant']      = { fg = c.fg_1 },
    ['@function']      = { fg = c.grad_3 },
    ['@function.call'] = { fg = c.grad_3 },
    ['@string']        = { fg = c.green },
    ['@module']        = { fg = c.grad_2 },


    ['@markup.heading.1']      = { fg = c.fg_2 },
    ['@markup.heading.2']      = { fg = c.green },
    ['@markup.heading.3']      = { fg = c.grad_3 },
    ['@markup.heading.4']      = { fg = c.grad_2 },
    ['@markup.heading.5']      = { fg = c.grad_1 },
    ['@markup.heading.6']      = { fg = c.grad_0 },
    ['@markup.link']           = { fg = c.fg_2 },
    ['@markup.link.label']     = { fg = c.grad_3, underline = true },
    ['@markup.raw']            = { fg = c.grad_3 },
    ['@markup.list']           = { fg = c.orange },
    ['@markup.list.checked']   = { fg = c.yellow },
    ['@markup.list.unchecked'] = { fg = c.yellow },
    ['@markup.strikethrough']  = { strikethrough = true },

    htmlH1                     = { link = 'markup.heading.1' },
    htmlH2                     = { link = 'markup.heading.2' },
    htmlH3                     = { link = 'markup.heading.3' },
    htmlH4                     = { link = 'markup.heading.4' },
    htmlH5                     = { link = 'markup.heading.5' },
}

M.plugins = {
    TelescopeNormal             = { fg = c.fg_1 },
    TelescopeBorder             = { fg = c.border_1 },
    TelescopeTitle              = { fg = c.fg_2 },
    TelescopePromptTitle        = { fg = c.fg_2 },
    TelescopePromptPrefix       = { fg = c.grad_3 },
    TelescopeMatching           = { fg = c.grad_3 },
    TelescopePreviewDirectory   = { fg = c.grad_1 },
    TelescopeSelectionCaret     = { fg = c.red },
    TelescopeMultiSelection     = { fg = c.fg_2, bold = true },

    MiniNotifyBorder            = { fg = c.border_1 },
    MiniNotifyTitle             = { fg = c.fg_2, bold = true },
    MiniIndentScopeSymbol       = { fg = c.border_2 },

    CmpItemAbbr                 = { fg = c.fg_1 },
    CmpItemAbbrMatch            = { fg = c.fg_2, bold = true },
    CmpItemAbbrMatchFuzzy       = { link = "CmpItemAbbrMatch" },
    CmpItemKind                 = { fg = c.grad_3 },
    CmpItemMenu                 = { fg = c.grad_0 },

    GitSignsAdd                 = { fg = c.git.add },
    GitSignsChange              = { fg = c.git.modify },
    GitSignsDelete              = { fg = c.git.remove },

    DapBreakpoint               = { fg = c.red },
    DapBreakpointCondition      = { fg = c.orange },
    DapStoped                   = { fg = c.yellow },
    DapLogPoint                 = { fg = c.purple },

    NeogitDiffAdd               = { fg = c.bg, bg = c.git.add },
    NeogitDiffDelete            = { fg = c.bg, bg = c.git.remove },
    NeogitDiffAddHighlight      = { link = "NeogitDiffAdd" },
    NeogitDiffDeleteHighlight   = { link = "NeogitDiffDelete" },
    NeogitDiffAddCursor         = { fg = c.git.add },
    NeogitDiffDeleteCursor      = { fg = c.git.remove },
    NeogitDiffAdditions         = { fg = c.git.add },
    NeogitDiffDeletions         = { fg = c.git.remove },
    NeogitCommitViewHeader      = { fg = c.yellow },
    NeogitCommitViewDescription = { fg = c.grad_0 },

    TroubleIndent               = { fg = c.border_2 },


    MarkViewHeading1          = { fg = c.fg_2, bg = u.blend(c.fg_2, c.bg, 0.1) },
    MarkViewHeading2          = { fg = c.green, bg = u.blend(c.green, c.bg, 0.1) },
    MarkViewHeading3          = { fg = c.grad_3, bg = u.blend(c.grad_3, c.bg, 0.1) },
    MarkViewHeading4          = { fg = c.grad_2, bg = u.blend(c.grad_2, c.bg, 0.1) },
    MarkViewHeading5          = { fg = c.grad_1, bg = u.blend(c.grad_1, c.bg, 0.1) },
    MarkViewHeading6          = { fg = c.grad_0, bg = u.blend(c.grad_0, c.bg, 0.1) },
    MarkViewListItemMinus     = { fg = c.orange },
    MarkViewListItemPlus      = { fg = c.orange },
    MarkViewListItemStar      = { fg = c.orange },
    MarkviewCheckboxUnchecked = { fg = c.yellow },
    MarkviewCheckboxChecked   = { fg = c.yellow },
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
