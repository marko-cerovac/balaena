local c = require 'balaena.colors'

local M = {}

M.normal = {
    a = { fg = c.grad_3, bg = c.bg_alt_1 },
    b = { fg = c.fg_2, bg = c.bg_alt_0 },
    c = { fg = c.fg_1, bg = c.bg },
}

M.insert = {
    a = { fg = c.grad_1, bg = c.bg_alt_1 },
}

M.visual = {
    a = { fg = c.grad_0, bg = c.bg_alt_1 },
}

M.replace = {
    a = { fg = c.red, bg = c.bg_alt_1 },
}

M.command = {
    a = { fg = c.yellow, bg = c.bg_alt_1 },
}

M.inactive = {
    a = { fg = c.fg_0, bg = c.bg_alt_1 },
}

M.terminal = {
    a = { fg = c.green, bg = c.bg_alt_1 },
}

return M
