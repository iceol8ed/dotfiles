# ~/.config/fish/conf.d/hyprland.fish
# only start Hyprland when on virtual terminal 1, no X/Wayland is running,
# not over SSH, and this is an interactive shell
if status --is-interactive; and test -z "$DISPLAY"; and test -z "$WAYLAND_DISPLAY"; and test -z "$SSH_CONNECTION"; and test "$XDG_VTNR" = "1"
    exec Hyprland
end

