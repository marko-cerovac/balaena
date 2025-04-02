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

local function example(param)
    if param == 3 then
        print("Hello world!")
    end
end

example(1)
example(2)

vim.api.nvim_set_hl(0, 'Normal', { bg = colors.bg, fg = colors.fg })
vim.api.nvim_set_hl(0, 'NormalFloat', { bg = colors.bg, fg = colors.fg })
-- vim.api.nvim_set_hl(0, 'NormalFloat', { bg = colors.bg_light, fg = colors.fg })

vim.api.nvim_set_hl(0, 'Visual', { bg = colors.selection })
vim.api.nvim_set_hl(0, 'CursorLine', { bg = colors.cursorline_bg })
vim.api.nvim_set_hl(0, 'LineNr', { fg = colors.line_nr })
vim.api.nvim_set_hl(0, 'CursorLineNr', { fg = colors.fg })

vim.api.nvim_set_hl(0, 'Search', { fg = colors.bg, bg = colors.snow_0 })
vim.api.nvim_set_hl(0, 'CurSearch', { fg = colors.bg, bg = colors.aurora_2 }) -- TODO: change

vim.api.nvim_set_hl(0, 'NoiceCmdlinePopupBorder', { fg = colors.border })
vim.api.nvim_set_hl(0, 'TelescopeBorder', { fg = colors.border })
vim.api.nvim_set_hl(0, 'FloatBorder', { fg = colors.border, bg = colors.bg })
vim.api.nvim_set_hl(0, 'WinSeparator', { fg = colors.border_blend })

vim.api.nvim_set_hl(0, '@operator', { fg = colors.frost_3 })
-- vim.api.nvim_set_hl(0, '@operator', { fg = colors.aurora_4 })
vim.api.nvim_set_hl(0, '@keyword', { fg = colors.frost_3 })

vim.api.nvim_set_hl(0, '@number', { fg = colors.aurora_1 })

vim.api.nvim_set_hl(0, '@variable', { fg = colors.snow_1 })
vim.api.nvim_set_hl(0, '@property', { fg = colors.fg1 })

vim.api.nvim_set_hl(0, '@function', { fg = colors.frost_1 })
vim.api.nvim_set_hl(0, '@function.call', { fg = colors.frost_1 })

vim.api.nvim_set_hl(0, '@string', { fg = colors.aurora_3 })

vim.api.nvim_set_hl(0, '@type', { fg = colors.frost_2 })
vim.api.nvim_set_hl(0, '@constructor', { fg = colors.frost_2 })
vim.api.nvim_set_hl(0, '@type.builtin', { fg = colors.frost_2 })

vim.api.nvim_set_hl(0, 'CmpItemSelected', { fg = colors.frost_2, reverse = true })
vim.api.nvim_set_hl(0, 'CmpItemAbbr', { fg = colors.fg })
vim.api.nvim_set_hl(0, 'CmpItemAbbrMatch', { fg = colors.snow_0, bold = true })
vim.api.nvim_set_hl(0, 'CmpItemAbbrMatchFuzzy', { link = "CmpItemAbbrMatch" })
vim.api.nvim_set_hl(0, 'CmpItemKind', { fg = colors.frost_2 })
vim.api.nvim_set_hl(0, 'CmpItemMenu', { fg = colors.frost_3 })
