package.loaded["balaena.colors"]     = nil
package.loaded["balaena.highlights"] = nil
package.loaded["balaena.utils"]      = nil

vim.cmd 'highlight clear'
if vim.fn.exists 'syntax on' then
        vim.cmd 'syntax reset'
end

local hl = require 'balaena.highlights'

vim.opt.termguicolors = true
vim.opt.background    = "dark"
vim.g.colors_name     = "balaena"

for k, v in pairs(hl.editor) do
    vim.api.nvim_set_hl(0, k, v)
end

for k, v in pairs(hl.syntax) do
    vim.api.nvim_set_hl(0, k, v)
end

vim.schedule(function()
    for k, v in pairs(hl.plugins) do
        vim.api.nvim_set_hl(0, k, v)
    end
end)
