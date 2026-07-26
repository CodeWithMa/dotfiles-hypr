--##################
--## PERMISSIONS ###
--##################

-- See https://wiki.hypr.land/Configuring/Permissions/
-- Please note permission changes here require a Hyprland restart and are not applied on-the-fly
-- for security reasons

hl.config({
    ecosystem = {
        enforce_permissions = 1,
    },
})

hl.permission("/usr/(bin|local/bin)/hyprlock", "screencopy", "deny")
