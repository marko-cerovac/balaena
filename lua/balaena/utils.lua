local M = {}


---Convert a hex color to an rgb color
---@param hex string hex color value
---@return number r red value
---@return number g green value
---@return number b blue value
local to_rgb = function(hex)
    return
        tonumber(hex:sub(2, 3), 16),
        tonumber(hex:sub(4, 5), 16),
        tonumber(hex:sub(6, 7), 16)
end

---Convert an rgb color to a hex color
---@param r number red
---@param g number green
---@param b number blue
local to_hex = function(r, g, b)
    return string.format("#%02x%02x%02x", r, g, b)
end

local round = function(val)
    return math.floor(val + 0.5)
end

local clamp = function(val, min, max)
    return math.min(math.max(val, min), max)
end

--- Shade Color generate
--- @param color string hex color value
--- @param percent number tint percentage
--- @return string
-- SOURCE: https://stackoverflow.com/questions/5560248/programmatically-lighten-or-darken-a-hex-color-or-rgb-and-blend-colors
-- @see: https://stackoverflow.com/questions/37796287/convert-decimal-to-hex-in-lua-4
M.tint = function(color, percent)
    local r, g, b = to_rgb(color)

    -- If any of the colors are missing return "NONE" i.e. no highlight
    if not r or not g or not b then return "NONE" end

    r = math.floor(tonumber(r * (100 + percent) / 100) or 0)
    g = math.floor(tonumber(g * (100 + percent) / 100) or 0)
    b = math.floor(tonumber(b * (100 + percent) / 100) or 0)
    r, g, b = r < 255 and r or 255, g < 255 and g or 255, b < 255 and b or 255

    return to_hex(r, g, b)
end

--- Blend colors given the alpha value
--- @param foreground string foreground hex color
--- @param background string background hex color
--- @param alpha number alpha channel
M.blend = function(foreground, background, alpha)
    local bg = { to_rgb(background) }
    local fg = { to_rgb(foreground) }

    local blend_channel = function(channel)
        return round(clamp(alpha * fg[channel] + ((1 - alpha) * bg[channel]), 0, 255))
    end

    local r = blend_channel(1)
    local g = blend_channel(2)
    local b = blend_channel(3)

    return to_hex(r, g, b)
end

return M
