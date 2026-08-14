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
-- hl.bind(mainMod .. " + " .. "L", hl.dsp.exec_cmd("hyprlock"))
hl.bind(mainMod .. " + " .. "L", hl.dsp.exec_cmd("swaylock --color 333333 --show-failed-attempts"))
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
hl.bind(mainMod .. " + left",  hl.dsp.focus({ direction = "left" }))
hl.bind(mainMod .. " + right", hl.dsp.focus({ direction = "right" }))
hl.bind(mainMod .. " + up",    hl.dsp.focus({ direction = "up" }))
hl.bind(mainMod .. " + down",  hl.dsp.focus({ direction = "down" }))

-- Move window with mainMod + shift + arrow keys

hl.bind(mainMod .. " + " .. "SHIFT" .. " + " .. "left", hl.dsp.window.move({ direction = "l" }))
hl.bind(mainMod .. " + " .. "SHIFT" .. " + " .. "right", hl.dsp.window.move({ direction = "r" }))
hl.bind(mainMod .. " + " .. "SHIFT" .. " + " .. "up", hl.dsp.window.move({ direction = "u" }))
hl.bind(mainMod .. " + " .. "SHIFT" .. " + " .. "down", hl.dsp.window.move({ direction = "d" }))

-- Switch workspaces with mainMod + [0-9]
-- Move active window to a workspace with mainMod + SHIFT + [0-9]
for i = 1, 10 do
    local key = i % 10 -- 10 maps to key 0
    hl.bind(mainMod .. " + " .. key,             hl.dsp.focus({ workspace = i}))
    hl.bind(mainMod .. " + SHIFT + " .. key,     hl.dsp.window.move({ workspace = i, follow = false }))
end

-- Move the current workspace to the next or previous monitor
hl.bind("CTRL + ALT + left", hl.dsp.workspace.move({ monitor = -1 }))
hl.bind("CTRL + ALT + right", hl.dsp.workspace.move({ monitor = 1 }))

-- Scroll through existing workspaces with mainMod + scroll

hl.bind(mainMod .. " + " .. "mouse_down", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(mainMod .. " + " .. "mouse_up", hl.dsp.focus({ workspace = "e-1" }))

-- Toggle submap

hl.bind(mainMod .. " + " .. "T", hl.dsp.submap("toggle_submap"))

hl.define_submap("toggle_submap", function()
    hl.bind("C",function()
        hl.dispatch(hl.dsp.exec_cmd("copyq toggle"))
        hl.dispatch(hl.dsp.submap("reset"))
    end)

    hl.bind("W",function()
	hl.dispatch(hl.dsp.exec_cmd("pkill -SIGUSR1 waybar"))
        hl.dispatch(hl.dsp.submap("reset"))
    end)

    hl.bind("F",function()
	-- TODO not working: hyprctl dispatch togglefloating -> lua
	hl.dispatch(hl.dsp.exec_cmd("hyprctl dispatch togglefloating"))
        hl.dispatch(hl.dsp.submap("reset"))
    end)

    -- Back to default submap
    hl.bind("Return", hl.dsp.submap("reset"))
    hl.bind("Escape", hl.dsp.submap("reset"))
end)
