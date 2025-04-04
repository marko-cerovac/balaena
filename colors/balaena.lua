package.loaded["balaena.colors"] = nil
package.loaded["balaena.highlights"] = nil
package.loaded["balaena.utils"] = nil

local hl = require 'balaena.highlights'

if vim.g.colors_name then
    vim.cmd "hi clear"
end

vim.g.colors_name = "balaena"
vim.opt.termguicolors = true
vim.opt.background = "dark"

for k, v in pairs(hl.editor) do
    vim.api.nvim_set_hl(0, k, v)
end

for k, v in pairs(hl.syntax) do
    vim.api.nvim_set_hl(0, k, v)
end

for k, v in pairs(hl.plugins) do
    vim.api.nvim_set_hl(0, k, v)
end
