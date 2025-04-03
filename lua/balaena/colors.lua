local colors = {
    -- editor colors
    bg            = "#141a23",
    bg_light      = "#19202c",

    fg            = "#cce0e8",
    fg1           = "#b1bbe5", -- TODO: remove this color
    -- TODO: add stelthy text color

    -- TODO: add another stelthy border
    border        = "#364155",
    separator  = "#1e242f",

    cursor        = "#e4f8ff",
    cursorline    = "#1b212d",
    selection     = "#232b3a",
    line_nr       = "#3b4154",

    -- TODO: choose new white colors
    light_0  = "#d8dee9",
    light_1  = "#e5e9f0",
    light_2  = "#eceff4",

    grad_0  = "#99e2d7",
    grad_1  = "#a0d2e1",
    grad_2  = "#a0b7e1",
    grad_3  = "#98a0e1",

    red    = "#e68686",
    orange = "#e8ae94",
    yellow = "#e4e8a6",
    green  = "#aae7b4",
    purple = "#d0aae2",

    git = {
        add    = "#a1f4a8",
        modify = "#9bf0f3",
        remove = "#f5a1a1",
    },

    -- TODO: choose different colors
    lsp = {
        err = "#f6627e",
        warn = "#e4d678",
    },
}

colors.lsp['info'] = colors.grad_3
colors.lsp['hint'] = colors.light_0

return colors
