{
  xdg.configFile = {
    "hypr/scripts/volume-control.sh".text = ''
      #!/usr/bin/env bash
      iconSound="audio-volume-high"
      iconMuted="audio-volume-muted"
      function get_volume {
        pamixer --get-volume
      }
      function send_notification {
        if [ "$(pamixer --get-mute)" = true ]; then
          dunstify -i $iconMuted -r 2593 -u normal "mute"
        else
          dunstify -i $iconSound -r 2593 -u normal -h int:value:"$1" "Volume: $1%"
        fi
      }
      case $1 in
        up)
          pamixer --unmute
          pamixer --increase 5
          send_notification "$(get_volume)"
        ;;
        down)
          pamixer --unmute
          pamixer --decrease 5
          send_notification "$(get_volume)"
        ;;
        mute)
          pamixer --toggle-mute
          send_notification "$(get_volume)"
        ;;
      esac
    '';
    "hypr/scripts/brightness-control.sh".text = ''
      #!/usr/bin/env bash
      icon="display-brightness"
      function get_brightness {
        echo $(( $(brightnessctl g) * 100 / $(brightnessctl m) ))
      }
      function send_notification {
        dunstify -i "$icon" -r 5555 -u normal -h int:value:"$1" "Brightness: $1%"
      }
      case $1 in
        up)
          brightnessctl set 5%+
          send_notification "$(get_brightness)"
        ;;
        down)
          brightnessctl set 5%-
          send_notification "$(get_brightness)"
        ;;
      esac
    '';
  };
}
