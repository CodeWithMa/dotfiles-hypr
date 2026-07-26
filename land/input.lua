--############
--## INPUT ###
--############

-- https://wiki.hypr.land/Configuring/Variables/#input

hl.config({
    input = {
        kb_layout = "germancolemak",
        kb_variant = {  },
        kb_model = {  },
        kb_options = "caps:backspace",
        kb_rules = {  },
        numlock_by_default = true,

        follow_mouse = 1,

        -- -1.0 - 1.0, 0 means no modification.
        sensitivity = 0,

        touchpad = {
            natural_scroll = false,
        },
    },
})

-- wacom tablet only on main monitor
-- get name of device with: hyprctl devices

hl.device({
    name = "wacom-bamboo-connect-pen",
    output = "HDMI-A-1",
})
