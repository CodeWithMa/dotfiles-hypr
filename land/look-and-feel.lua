--####################
--## LOOK AND FEEL ###
--####################

-- Refer to https://wiki.hypr.land/Configuring/Variables/
-- https://wiki.hypr.land/Configuring/Variables/#general

hl.config({
    general = {
        gaps_in = 0,
        gaps_out = 0,
        border_size = 2,
        -- https://wiki.hypr.land/Configuring/Variables/#variable-types for info about colors
        -- Set to true enable resizing windows by clicking and dragging on borders and gaps
        resize_on_border = true,
        -- Please see https://wiki.hypr.land/Configuring/Tearing/ before you turn this on
        allow_tearing = false,
        layout = "dwindle",
        col = {
            active_border = "rgb(7e00fc)",
            inactive_border = "rgb(595959)",
        },
    },
})

-- https://wiki.hypr.land/Configuring/Variables/#decoration

hl.config({
    decoration = {
        rounding = 0,
        rounding_power = 2,
        -- Change transparency of focused and unfocused windows
        active_opacity = 1.0,
        inactive_opacity = 1.0,
        shadow = {
            enabled = false,
            range = 4,
            render_power = 3,
            color = "rgba(1a1a1aee)",
        },
        -- https://wiki.hypr.land/Configuring/Variables/#blur
        blur = {
            enabled = true,
            size = 3,
            passes = 1,
            vibrancy = 0.1696,
        },
    },
})

-- https://wiki.hypr.land/Configuring/Variables/#animations

hl.config({
    animations = {
        enabled = false,
    },
})

-- Ref https://wiki.hypr.land/Configuring/Workspace-Rules/
-- "Smart gaps" / "No gaps when only"

hl.workspace_rule({ workspace = "w[tv1]", gaps_out = 0, gaps_in = 0 })
hl.workspace_rule({ workspace = "f[1]", gaps_out = 0, gaps_in = 0 })
hl.window_rule({ match = { float = false, workspace = "w[tv1]" }, border_size = 0 })
hl.window_rule({ match = { float = false, workspace = "w[tv1]" }, rounding = 0 })
hl.window_rule({ match = { float = false, workspace = "f[1]" }, border_size = 0 })
hl.window_rule({ match = { float = false, workspace = "f[1]" }, rounding = 0 })

hl.config({
    binds = {
        -- If enabled, an attempt to switch to the currently focused workspace will instead switch to the previous workspace
        workspace_back_and_forth = true,
        -- Whether switching workspaces should center the cursor on the workspace (0) or on the last active window for that workspace (1)
        workspace_center_on = 1,
    },
})

-- See https://wiki.hypr.land/Configuring/Dwindle-Layout/ for more

hl.config({
    dwindle = {
        -- 2 -> always split to the right (new = right or bottom)
        force_split = 2,
        -- You probably want this
        preserve_split = true,
    },
})

-- See https://wiki.hypr.land/Configuring/Master-Layout/ for more

hl.config({
    master = {
        new_status = "master",
    },
})

-- https://wiki.hypr.land/Configuring/Variables/#misc

hl.config({
    misc = {
        -- Set to 0 or 1 to disable the anime mascot wallpapers
        force_default_wallpaper = -1,
        -- If true disables the random hyprland logo / anime girl background. :(
        disable_hyprland_logo = false,
        -- Application not Responding dialogue
        enable_anr_dialog = false,
        -- anr_missed_pings = 10
    },
})
