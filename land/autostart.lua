--################
--## AUTOSTART ###
--################

hl.on("hyprland.start", function()
    hl.exec_cmd("[workspace 1 silent] alacritty")
    hl.exec_cmd("[workspace 11 silent] alacritty -e btop")
    hl.exec_cmd("[workspace 11 silent] alacritty -e nload -i 100000 -o 40000")
    hl.exec_cmd("copyq")
    hl.exec_cmd("pidof fcitx5 || fcitx5")
    hl.exec_cmd("waybar")
    hl.exec_cmd("hypridle")
    hl.exec_cmd("hyprpaper")
    hl.exec_cmd("hyprsunset")
end)
