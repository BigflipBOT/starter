-- ---@type Base46Table
local M = {}

M.base_30 = {
    white = "#28FFFF", -- opened buff names (top + statusline)
    darker_black = "#0D0D15",
    black = "#511E1E", --  opened buffs bg + pmenu unselected bg + selected font + mode indicator font (uh....)
    black2 = "#1F0911", -- line bg + buff unfocused
    one_bg = "#FFFFFF", -- ?
    one_bg2 = "#FFFFFF", -- ?
    one_bg3 = "#3e3d43", -- top right btn
    grey = "#FA7470", -- line numbers
    grey_fg = "#4e4d5d", -- comments
    grey_fg2 = "#FFFFFF", -- ?
    light_grey = "#F95E5A", -- not opened buff names + git branch name
    red = "#fc0228", -- general red stuff + btm right folder icon 
    baby_pink = "#D4ADCF",
    pink = "#D57BFF",
    line = "#271219", -- folder tree graph color in file explorer
    green = "#60DFAC", -- command mode indicator
    vibrant_green = "#28E096",
    nord_blue = "#8bc2f0", -- normal mode indicator
    blue = "#89B4FA",
    yellow = "#F8F87B", -- general yellow stuff
    sun = "#FFFF4D", -- ?
    purple = "#8C8BC0",
    dark_purple = "#6766B3",
    teal = "#00A0A9", -- syntax highlight sy
    orange = "#C4421A",
    cyan = "#28FFFF",
    statusline_bg = "#271219", -- statusline bg
    lightbg = "#16162E", -- statusline buff name bg + statusline char count bg
    pmenu_bg = "#1F0911", -- pmenu selected bg hi
    folder_bg = "#28FFFF", -- folder fg
    -- lavender = "#FFFFFF",
}

M.base_16 = {
    -- code space
    base00 = "#0D0D15",
    base01 = "#0f1320",
    base02 = "#1F0911",
    base03 = "#271219",
    base04 = "#FA7470", -- ?
    base05 = "#F95E5A", -- font in main codespace
    base06 = "#F95E5A", -- ?
    base07 = "#FFFFFF", -- ?
    -- syntax highlight
    base08 = "#28FFFF",
    base09 = "#60DFAC",
    base0A = "#25cf39", -- also search highlight
    base0B = "#FFFF4D",
    base0C = "#28FFFF",
    base0D = "#6766B3",
    base0E = "#D57BFF",
    base0F = "#D4ADCF",
}

M.type = "dark"

M = require("base46").override_theme(M, "cpblue")

return M
