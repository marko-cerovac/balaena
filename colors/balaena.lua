local colors = {
    -- editor colors
    bg = "#141a23",
    -- bg = "#141a25",
    bg_light = "#19202c",

    fg = "#cce0e8",
    fg1 = "#b1bbe5",


    border = "#364155",
    border_blend = "#1e242f",

    cursor = "#e4f8ff",
    cursorline_bg = "#1b212d",
    selection = "#232b3a",

    -- line_nr = "#2a303d",
    line_nr = "#313646",

    -- primary colors
    light_cyan = "#a0f3e7",
    dark_cyan = "#80d1c5",

    light_purple = "#b395cf",
    dark_purple = "#ae83bc",

    snow_0 = "#d8dee9",
    snow_1 = "#e5e9f0",
    snow_2 = "#eceff4",

    frost_0  = "#9ececd",
    frost_1  = "#98d2e2",
    frost_2  = "#8fb1d4",
    frost_3  = "#88acd7",
    aurora_0 = "#d46973",
    aurora_1 = "#e4957c",
    aurora_2 = "#fbdda0",
    aurora_3 = "#b3d09b",
    aurora_4 = "#c69dbe",

-- "#8fbcbb"
-- "#88c0d0"
-- "#81a1c1"
-- "#7b9cc4"
--          
-- "#bf616a"
-- "#d08770"
-- "#ebcb8b"
-- "#a3be8c"
-- "#b48ead"
}

local editor     = {}
local treesitter = {}
local plugins    = {}

vim.g.colors_name = "balaena"

editor['Normal'] = { bg = colors.bg, fg = colors.fg }
editor['NormalFloat'] = { bg = colors.bg, fg = colors.fg }

editor['Visual'] = { bg = colors.selection }
editor['CursorLine'] = { bg = colors.cursorline_bg }
editor['LineNr'] = { fg = colors.line_nr }
editor['CursorLineNr'] = { fg = colors.fg }

editor['Search'] = { fg = colors.bg, bg = colors.snow_0 }
editor['CurSearch'] = { fg = colors.bg, bg = colors.aurora_2 } -- TODO: change

editor['FloatBorder'] = { fg = colors.border, bg = colors.bg }
editor['WinSeparator'] = { fg = colors.border_blend }

treesitter['@operator'] = { fg = colors.frost_3 }
treesitter['@keyword'] = { fg = colors.frost_3 }

treesitter['@number'] = { fg = colors.aurora_1 }

treesitter['@variable'] = { fg = colors.snow_1 }
treesitter['@property'] = { fg = colors.fg1 }

treesitter['@function'] = { fg = colors.frost_1 }
treesitter['@function.call'] = { fg = colors.frost_1 }

treesitter['@string'] = { fg = colors.aurora_3 }

treesitter['@type'] = { fg = colors.frost_2 }
treesitter['@constructor'] = { fg = colors.frost_2 }
treesitter['@type.builtin'] = { fg = colors.frost_2 }

plugins['NoiceCmdlinePopupTitle'] = { fg = colors.snow_1 }
plugins['NoiceCmdlinePopupBorder'] = { fg = colors.border }
plugins['NoiceCmdlinePopupBorderSearch'] = { fg = colors.border }
plugins['TelescopeBorder'] = { fg = colors.border }

plugins['CmpItemSelected'] = { fg = colors.frost_2, reverse = true }
plugins['CmpItemAbbr'] = { fg = colors.fg }
plugins['CmpItemAbbrMatch'] = { fg = colors.snow_0, bold = true }
plugins['CmpItemAbbrMatchFuzzy'] = { link = "CmpItemAbbrMatch" }
plugins['CmpItemKind'] = { fg = colors.frost_2 }
plugins['CmpItemMenu'] = { fg = colors.frost_3 }

for k, v in pairs(editor) do
    vim.api.nvim_set_hl(0, k, v)
end

for k, v in pairs(treesitter) do
    vim.api.nvim_set_hl(0, k, v)
end

for k, v in pairs(plugins) do
    vim.api.nvim_set_hl(0, k, v)
end
