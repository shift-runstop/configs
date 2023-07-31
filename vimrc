exec xset s off
exec xset -dpms
exec --no-startup-id wal -i ~/.config/wal/
exec --no-startup-id nm-applet
exec --no-startup-id picom
exec --no-startup-id blueman-applet
exec volumeicon
exec --no-startup-id unclutter
exec_always --no-startup-id ~/.config/polybar/launch.sh
exec_always --no-startup-id setxkbmap eu

set $mod Mod4

for_window [class="^.*" instance="^.*"] border pixel 2
for_window [class="^.*" instance="^.*"] floating enable

font pango:DejaVu Sans Mono 10

floating_modifier $mod

gaps inner 20
gaps outer 30

bindsym $mod+z		gaps outer current plus 5
bindsym $mod+Shift+z	gaps outer current minus 5
bindsym $mod+Return exec --no-startup-id alacritty
bindsym $mod+Shift+Return exec
bindsym $mod+Shift+l exec --no-startup-id i3lock-fancy -gpf C64_Pro_Mono_STYLE.ttf
bindsym $mod+m exec wal -i ~/.config/wal/ && pywalfox update && pywal-discord
bindsym $mod+Shift+m exec wal -li ~/.config/wal/ && pywalfox update && pywal-discord
bindsym $mod+a exec --no-startup-id alacritty -e pulsemixer
bindsym $mod+b exec --no-startup-id alacritty -e btm
bindsym $mod+i exec --no-startup-id alacritty -e ranger
bindsym $mod+n exec caja
bindsym $mod+u exec firefox
bindsym $mod+g exec gimp
bindsym $mod+t exec ~/war/tool/idea-IU-222.4167.29/bin/idea.sh
bindsym $mod+Shift+q kill
bindsym $mod+d exec rofi -show run -theme
bindsym $mod+h focus left
bindsym $mod+j focus down
bindsym $mod+k focus up
bindsym $mod+l focus right
bindsym $mod+Ctrl+h move left
bindsym $mod+Ctrl+j move down
bindsym $mod+Ctrl+k move up
bindsym $mod+Ctrl+l move right
bindsym $mod+Shift+minus move scratchpad
bindsym $mod+minus scratchpad show
bindsym $mod+c split h
bindsym $mod+v split v
bindsym $mod+f fullscreen toggle
bindsym $mod+s layout stacking
bindsym $mod+w layout tabbed
bindsym $mod+e layout toggle split
bindsym $mod+Shift+space floating toggle
bindsym $mod+space focus mode_toggle
#bindsym $mod+a focus parent
bindsym $mod+1 workspace 1
bindsym $mod+2 workspace 2
bindsym $mod+3 workspace 3
bindsym $mod+4 workspace 4
bindsym $mod+5 workspace 5
bindsym $mod+6 workspace 6
bindsym $mod+7 workspace 7
bindsym $mod+8 workspace 8
bindsym $mod+9 workspace 9
bindsym $mod+0 workspace 10
bindsym $mod+Shift+1 move container to workspace 1
bindsym $mod+Shift+2 move container to workspace 2
bindsym $mod+Shift+3 move container to workspace 3
bindsym $mod+Shift+4 move container to workspace 4
bindsym $mod+Shift+5 move container to workspace 5
bindsym $mod+Shift+6 move container to workspace 6
bindsym $mod+Shift+7 move container to workspace 7
bindsym $mod+Shift+8 move container to workspace 8
bindsym $mod+Shift+9 move container to workspace 9
bindsym $mod+Shift+0 move container to workspace 10
bindsym $mod+Shift+c reload
bindsym $mod+Shift+r restart
bindsym $mod+Shift+e exit
bindsym $mod+r mode "resize"

mode "resize" {
        bindsym h resize shrink width 10 px or 10 ppt
        bindsym j resize grow height 10 px or 10 ppt
        bindsym k resize shrink height 10 px or 10 ppt
        bindsym l resize grow width 10 px or 10 ppt
        bindsym Return mode "default"
        bindsym Escape mode "default"
}

set_from_resource $fg i3wm.color1 #ff0090
set_from_resource $bg i3wm.color4 #47e0fb

# class                 border  backgr. text indicator child_border

client.focused          $fg     $bg     $fg  $bg       $fg
client.focused_inactive $fg     $bg     $fg  $bg       $fg
client.unfocused        $fg     $bg     $fg  $bg       $fg
client.urgent           $fg     $bg     $fg  $bg       $fg
client.placeholder      $fg     $bg     $fg  $bg       $fg
client.background       $fg


#bindsym $mod+m [class="pulse"] scratchpad show; move position center
#bindsym $mod+i [class="fm"] scratchpad show; move position center
#exec --no-startup-id st --class fm,fm -e ranger
#exec --no-startup-id st --class pulse,pulse -e pulsemixer
#bindsym $mod+a exec ~/war/tool/android-studio-2021.3.1.17-linux/android-studio/bin/studio.sh
#exec --no-startup-id nitrogen --restore
#exec --no-startup-id feh --bg-fill --randomize ~/.config/wal/*
