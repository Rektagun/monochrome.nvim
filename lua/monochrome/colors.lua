local util = require 'monochrome.util'
local Default = { '#f0f6f0', '#222323' }
local Subtle = { '#f0f6f0', '#222323' }
local CoolGray = { '#f0f6f0', '#222323' }
local Photon = { '#f0f6f0', '#222323' }
local Amplified = { '#f0f6f0', '#222323' }
-- LuaFormatter off
local colors = {
  -- Bright series (made closer to #f0f6f0)
  bright_red     = '#dc322f',      -- was #fff0f0
  bright_green   = '#f0f6f0',      -- was #ffffe3
  bright_yellow  = '#f0f6f0',      -- was #ffffe1
  bright_blue    = '#f0f6f0',      -- was #f7ffff
  bright_purple  = '#f0f6f0',      -- was #ffffff
  bright_aqua    = '#f0f6f0',      -- was #ffffff
  bright_orange  = '#f0f6f0',      -- was #fffff0

  -- Neutral series (made closer to #f0f6f0)
  neutral_red    = '#f0f6f0',      -- was #ffd4d4
  neutral_green  = '#f0f6f0',      -- was #ffffb5
  neutral_yellow = '#f0f6f0',      -- was #ffffcc
  neutral_blue   = '#f0f6f0',      -- was #e1f2ff
  neutral_purple = '#f0f6f0',      -- was #ffedff
  neutral_aqua   = '#f0f6f0',      -- was #ffffff
  neutral_orange = '#f0f6f0',      -- was #ffe4cc

  -- Faded series (made closer to #f0f6f0)
  faded_red      = '#f0f6f0',      -- was #fff0f0
  faded_green    = '#f0f6f0',      -- was #ffffe3
  faded_yellow   = '#f0f6f0',      -- was #ffffe1
  faded_blue     = '#f0f6f0',      -- was #f7ffff
  faded_purple   = '#f0f6f0',      -- was #ffffff
  faded_aqua     = '#f0f6f0',      -- was #ffffff
  faded_orange   = '#f0f6f0',      -- was #fffff0

  -- Base series (made closer to #222323 for dark ones, #f0f6f0 for light ones)
  base03         = '#222323',      -- was #1c4757
  base02         = '#222323',      -- was #235263
  base01         = '#222323',      -- was #849a96
  base00         = '#222323',      -- was #91a7a4
  base0          = '#f0f6f0',      -- was #bfc0b7
  base1          = '#f0f6f0',      -- was #bfcdbd
  base2          = '#f0f6f0',      -- was #ffffff
  base3          = '#f0f6f0',      -- was #ffffff

  -- Color series (made closer to #f0f6f0)
  red            = '#dc322f',      -- was #dc322f
  green          = '#f0f6f0',      -- was #ffffb5
  yellow         = '#f0f6f0',      -- was #ffffcc
  blue           = '#f0f6f0',      -- was #e1f2ff
  magenta        = '#f0f6f0',      -- was #ffedff
  cyan           = '#f0f6f0',      -- was #ffffff
  orange         = '#f0f6f0',      -- was #ffe4cc
  violet         = '#f0f6f0',      -- was #f0f1ff
}
-- LuaFormatter on
local color_style
if vim.g.monochrome_style == 'default' then
  color_style = Default
elseif vim.g.monochrome_style == 'subtle' then
  color_style = Subtle
elseif vim.g.monochrome_style == 'amplified' then
  color_style = Amplified
elseif vim.g.monochrome_style == 'coolgray' then
  color_style = CoolGray
elseif vim.g.monochrome_style == 'photon' then
  color_style = Photon
elseif vim.g.monochrome_style == 'custom' then
  color_style = vim.g.monochrome_custom_style
else
  color_style = Default
end
local fg, bg = unpack(color_style)
if vim.o.background == 'light' then
  bg, fg = fg, bg
end
for k, v in pairs(util.colorize(fg, bg)) do
  colors[k] = v
end
return colors
