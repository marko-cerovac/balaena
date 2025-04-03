local c = require 'balaena.colors'

local M = {}

M.normal = {
    a = { fg = c.grad_2, bg = c.bg_alt },
    b = { fg = c.fg_0, bg = c.bg },
    c = { fg = c.fg_1, bg = c.bg },
}

M.insert = {
    a = { fg = c.green, bg = c.bg_alt },
}

M.visual = {
    a = { fg = c.purple, bg = c.bg_alt },
}

M.replace = {
    a = { fg = c.red, bg = c.bg_alt },
}

M.command = {
    a = { fg = c.yellow, bg = c.bg_alt },
}

M.inactive = {
    a = { fg = c.fg_0, bg = c.bg_alt },
}

return M
