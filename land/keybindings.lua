--##################
--## KEYBINDINGS ###
--##################

-- See https://wiki.hypr.land/Configuring/Keywords/
-- Example binds, see https://wiki.hypr.land/Configuring/Binds/ for more

-- Sets "Windows" key as main modifier
local mainMod = "SUPER"

-- Mouse bindings
-- See https://wiki.hypr.land/Configuring/Binds/#mouse-binds

-- Move a window by dragging
hl.bind(mainMod .. " + " .. "mouse:272", hl.dsp.window.drag(), { mouse = true })

-- Keybindings

hl.bind(mainMod .. " + " .. "return", hl.dsp.exec_cmd("alacritty"))
hl.bind(mainMod .. " + " .. "D", hl.dsp.exec_cmd("rofi -show run -show-icons -theme onedark"))
hl.bind(mainMod .. " + " .. "L", hl.dsp.exec_cmd("hyprlock"))
hl.bind(mainMod .. " + " .. "Q", hl.dsp.window.close())

-- Next window created will be split to the left
hl.bind(mainMod .. " + " .. "SHIFT" .. " + " .. "B", hl.dsp.layout("preselect l"))
-- Next window created will be split to the right
hl.bind(mainMod .. " + " .. "B", hl.dsp.layout("preselect r"))
-- Next window created will be split to the top (up)
hl.bind(mainMod .. " + " .. "SHIFT" .. " + " .. "V", hl.dsp.layout("preselect u"))
-- Next window created will be split to the bottom (down)
hl.bind(mainMod .. " + " .. "V", hl.dsp.layout("preselect d"))

-- Move focus with mainMod + arrow keys

hl.bind(mainMod .. " + " .. "left", hl.dsp.focus({ direction = "left" }))
hl.bind(mainMod .. " + " .. "right", hl.dsp.focus({ direction = "right" }))
hl.bind(mainMod .. " + " .. "up", hl.dsp.focus({ direction = "up" }))
hl.bind(mainMod .. " + " .. "down", hl.dsp.focus({ direction = "down" }))

-- Move window with mainMod + shift + arrow keys

hl.bind(mainMod .. " + " .. "SHIFT" .. " + " .. "left", { direction = "l" })
hl.bind(mainMod .. " + " .. "SHIFT" .. " + " .. "right", { direction = "r" })
hl.bind(mainMod .. " + " .. "SHIFT" .. " + " .. "up", { direction = "u" })
hl.bind(mainMod .. " + " .. "SHIFT" .. " + " .. "down", { direction = "d" })

-- Switch workspaces with mainMod + [0-9]

hl.bind(mainMod .. " + " .. 1, hl.dsp.focus({ workspace = 1 }))
hl.bind(mainMod .. " + " .. 2, hl.dsp.focus({ workspace = 2 }))
hl.bind(mainMod .. " + " .. 3, hl.dsp.focus({ workspace = 3 }))
hl.bind(mainMod .. " + " .. 4, hl.dsp.focus({ workspace = 4 }))
hl.bind(mainMod .. " + " .. 5, hl.dsp.focus({ workspace = 5 }))
hl.bind(mainMod .. " + " .. 6, hl.dsp.focus({ workspace = 6 }))
hl.bind(mainMod .. " + " .. 7, hl.dsp.focus({ workspace = 7 }))
hl.bind(mainMod .. " + " .. 8, hl.dsp.focus({ workspace = 8 }))
hl.bind(mainMod .. " + " .. 9, hl.dsp.focus({ workspace = 9 }))
hl.bind(mainMod .. " + " .. 0, hl.dsp.focus({ workspace = 10 }))

-- Move active window to a workspace with mainMod + SHIFT + [0-9]

hl.bind(mainMod .. " + " .. "SHIFT" .. " + " .. 1, hl.dsp.window.move({ workspace = 1 }, { follow = false }))
hl.bind(mainMod .. " + " .. "SHIFT" .. " + " .. 2, hl.dsp.window.move({ workspace = 2 }, { follow = false }))
hl.bind(mainMod .. " + " .. "SHIFT" .. " + " .. 3, hl.dsp.window.move({ workspace = 3 }, { follow = false }))
hl.bind(mainMod .. " + " .. "SHIFT" .. " + " .. 4, hl.dsp.window.move({ workspace = 4 }, { follow = false }))
hl.bind(mainMod .. " + " .. "SHIFT" .. " + " .. 5, hl.dsp.window.move({ workspace = 5 }, { follow = false }))
hl.bind(mainMod .. " + " .. "SHIFT" .. " + " .. 6, hl.dsp.window.move({ workspace = 6 }, { follow = false }))
hl.bind(mainMod .. " + " .. "SHIFT" .. " + " .. 7, hl.dsp.window.move({ workspace = 7 }, { follow = false }))
hl.bind(mainMod .. " + " .. "SHIFT" .. " + " .. 8, hl.dsp.window.move({ workspace = 8 }, { follow = false }))
hl.bind(mainMod .. " + " .. "SHIFT" .. " + " .. 9, hl.dsp.window.move({ workspace = 9 }, { follow = false }))
hl.bind(mainMod .. " + " .. "SHIFT" .. " + " .. 0, hl.dsp.window.move({ workspace = 10 }, { follow = false }))

-- Move the current workspace to the next or previous monitor
-- TODO Test if this works
-- TODO: manual review (unknown dispatcher: movecurrentworkspacetomonitor)
hl.bind("CTRL + ALT + left", hl.dsp.workspace.move({ workspace = "e" }, { monitor = -1 }))
-- TODO: manual review (unknown dispatcher: movecurrentworkspacetomonitor)
hl.bind("CTRL + ALT + right", hl.dsp.workspace.move(({ workspace = "e" }, { monitor = 1 }))

-- Scroll through existing workspaces with mainMod + scroll

hl.bind(mainMod .. " + " .. "mouse_down", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(mainMod .. " + " .. "mouse_up", hl.dsp.focus({ workspace = "e-1" }))

-- Toggle submap

hl.bind(mainMod .. " + " .. "T", hl.dsp.submap("toggle_submap"))

hl.define_submap("toggle_submap", function()
    hl.bind("C", hl.dsp.exec_cmd("zsh -c 'copyq toggle; hyprctl dispatch submap reset'"))
    hl.bind("W", hl.dsp.exec_cmd("zsh -c 'pkill -SIGUSR1 waybar & ; hyprctl dispatch submap reset'"))
    hl.bind("F", hl.dsp.exec_cmd("zsh -c 'hyprctl dispatch togglefloating; hyprctl dispatch submap reset'"))
    -- Back to default submap
    hl.bind("Return", hl.dsp.submap("reset"))
    hl.bind("Escape", hl.dsp.submap("reset"))
end)
