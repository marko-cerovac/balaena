local M = {}


---Convert a hex color to an rgb color
---@param hex string hex color value
---@return table rgb rgb value
local to_rgb = function(hex)
    return {
        r = tonumber(hex:sub(2, 3), 16),
        g = tonumber(hex:sub(4, 5), 16),
        b = tonumber(hex:sub(6, 7), 16)
    }
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
  local c = to_rgb(color)

  -- If any of the colors are missing return "NONE" i.e. no highlight
  if not c.r or not c.g or not c.b then return "NONE" end

  c.r = math.floor(tonumber(c.r * (100 + percent) / 100) or 0)
  c.g = math.floor(tonumber(c.g * (100 + percent) / 100) or 0)
  c.b = math.floor(tonumber(c.b * (100 + percent) / 100) or 0)
  c.r, c.g, c.b = c.r < 255 and c.r or 255, c.g < 255 and c.g or 255, c.b < 255 and c.b or 255

  return to_hex(c.r, c.g, c.b)
end

--- Blend colors given the alpha value
--- @param foreground string foreground hex color
--- @param background string background hex color
--- @param alpha string alpha channel
M.blend = function(foreground, background, alpha)
  local bg = to_rgb(background)
  local fg = to_rgb(foreground)

  local blend_channel = function(i)
    return round(clamp(alpha * fg[i] + ((1 - alpha) * bg[i]), 0, 255))
  end

  local r = blend_channel(1)
  local g = blend_channel(2)
  local b = blend_channel(3)

  return to_hex(r, g, b)
end

return M
