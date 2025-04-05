local c = require 'balaena.colors'

local M = {}

M.normal = {
    a = { fg = c.grad_2, bg = c.bg_alt_1 },
    b = { fg = c.fg_1, bg = c.bg_alt_0 },
    c = { fg = c.fg_2, bg = c.bg },
}

M.insert = {
    a = { fg = c.green },
}

M.visual = {
    a = { fg = c.purple },
}

M.replace = {
    a = { fg = c.red },
}

M.command = {
    a = { fg = c.yellow },
}

M.inactive = {
    a = { fg = c.fg_0 },
}

return M
