local c = require 'balaena.colors'

local M = {}

M.normal = {
    a = { fg = c.grad_1, bg = c.bg_light },
    b = { fg = c.fg, bg = c.bg },
    c = { fg = c.light_0, bg = c.bg },
}

M.insert = {
    a = { fg = c.green, bg = c.bg_light },
}

M.visual = {
    a = { fg = c.purple, bg = c.bg_light },
}

M.replace = {
    a = { fg = c.red, bg = c.bg_light },
}

M.command = {
    a = { fg = c.yellow, bg = c.bg_light },
}

M.inactive = {
    a = { fg = c.light_0, bg = c.bg_light },
}

return M
