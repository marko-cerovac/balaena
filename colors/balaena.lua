package.loaded["balaena.colors"] = nil
package.loaded["balaena.highlights"] = nil
package.loaded["balaena.utils"] = nil

local hl = require 'balaena.highlights'

vim.g.colors_name = "balaena"

for k, v in pairs(hl.editor) do
    vim.api.nvim_set_hl(0, k, v)
end

for k, v in pairs(hl.treesitter) do
    vim.api.nvim_set_hl(0, k, v)
end

for k, v in pairs(hl.plugins) do
    vim.api.nvim_set_hl(0, k, v)
end
