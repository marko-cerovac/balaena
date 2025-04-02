local c = require 'balaena.colors'

local M = {}

M.normal = {
    a = { fg = c.frost_1, bg = c.bg_light },
    b = { fg = c.fg, bg = c.bg },
    c = { fg = c.snow_0, bg = c.bg },
}

M.insert = {
    a = { fg = c.aurora_3, bg = c.bg_light },
}

M.visual = {
    a = { fg = c.aurora_4, bg = c.bg_light },
}

M.replace = {
    a = { fg = c.aurora_0, bg = c.bg_light },
}

M.command = {
    a = { fg = c.aurora_2, bg = c.bg_light },
}

M.inactive = {
    a = { fg = c.snow_0, bg = c.bg_light },
}

return M
