{ pkgs, ... }:

pkgs.writeShellScriptBin "volume-control" ''
  #!/usr/bin/env bash

  iconSound="audio-volume-high"
  iconMuted="audio-volume-muted"

  function get_volume {
    pamixer --get-volume
  }

  function send_notification {
    if [ "$(pamixer --get-mute)" = true ]; then
      dunstify -i $iconMuted -r 2593 -u normal "Muted"
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
    *)
      echo "Usage: volume-control {up|down|mute}"
      exit 1
      ;;
  esac
''
