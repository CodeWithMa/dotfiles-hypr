--#############################
--## WINDOWS AND WORKSPACES ###
--#############################

-- See https://wiki.hypr.land/Configuring/Window-Rules/ for more
-- See https://wiki.hypr.land/Configuring/Workspace-Rules/ for workspace rules

-- Workspace Rules

-- Workspace 1 is the default for main monitor
hl.workspace_rule({ workspace = "1", monitor = "HDMI-A-3", default = true })
-- Workspace 11 is the default for monitor DP-2
hl.workspace_rule({ workspace = "11", monitor = "DP-2", default = true })

-- Window Rules

-- Ignore maximize requests from apps. You'll probably like this.

hl.window_rule({
    name  = "ignore-maximize-requests",
    match = {
        class = ".*",
    },
    suppress_event = "maximize",
})

-- Fix some dragging issues with XWayland

hl.window_rule({
    name  = "fix-xwayland-dragging",
    match = {
        class = "^$",
        title = "^$",
        xwayland = 1,
        float = 1,
        fullscreen = 0,
        pin = 0,
    },
    no_focus = true,
})

-- Make xwayland window border different color

hl.window_rule({
    name  = "xwayland-red-borders",
    match = {
        xwayland = 1,
    },
    border_color = "rgba(ff0066ee)",
})

-- floating Copyq

hl.window_rule({
    name  = "floating-copyq",
    match = {
        class = "com.github.hluk.copyq",
    },
    float = true,
})
