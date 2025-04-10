local colors = {
    -- editor colors
    bg       = "#141a23",
    bg_alt_0 = "#11161e",  -- darker background
    bg_alt_1 = "#19212d",  -- lighter background

    fg_0 = "#a5b7ca", -- darker text
    fg_1 = "#bacfe2", -- slightly darker text
    fg_2 = "#cce4f1", -- normal text
    fg_3 = "#e3f5ff", -- for titles and headings


    cursor    = "#e4f8ff", -- cursor color
    cursor_ln = "#1b212d", -- cursorline background
    selection = "#232b3a", -- visual selection background

    stealth_0 = "#353a4d", -- used for things that are disabled
    stealth_1 = "#3b4154", -- used for line numbers
    stealth_2 = "#444b65", -- used for comments

    border_0  = "#1e242f", -- discrete border, just visible enough to be present (used for window splits)
    border_1  = "#242b38", -- a slightly more visible border for floating windows that need to blend in
    border_2  = "#364155", -- lighter, clearly visible border (used most often)

    grad_0    = "#98a0e1", -- also used as blue
    grad_1    = "#a0b7e1",
    grad_2    = "#a0d2e1",
    grad_3    = "#99e2d7", -- also used as cyan

    red       = "#e68686",
    orange    = "#e8ae94",
    yellow    = "#e4e8a6",
    green     = "#aae7b4",
    purple    = "#d0aae2",

    -- open for change
    err       = "#eb6d85",
    warn      = "#dcd080",

    git       = {
        add    = "#a1f4a8",
        modify = "#9bf0f3",
        remove = "#f5a1a1",
    },
}

colors['info'] = colors.grad_3
colors['hint'] = colors.fg_1

return colors
