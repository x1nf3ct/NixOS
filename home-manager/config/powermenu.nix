{ pkgs, ... }:

pkgs.writeShellScriptBin "powermenu" ''
  #!/usr/bin/env bash

  # CMDs
  uptime="$(uptime -p | sed -e 's/up //g')"
  host="$(hostname)"

  # Options
  shutdown=' Shutdown'
  reboot=' Reboot'
  lock=' Lock'
  suspend=' Suspend'
  logout=' Logout'
  yes=' Yes'
  no=' No'

  # Rofi CMD
  rofi_cmd() {
    rofi -dmenu \
      -p "$host" \
      -mesg "Uptime: $uptime" \
      -theme ~/.config/rofi/config-power.rasi
  }

  # Confirmation CMD
  confirm_cmd() {
    rofi -theme-str 'window {location: center; anchor: center; fullscreen: false; width: 250px;}' \
         -theme-str 'mainbox {children: [ "message", "listview" ];}' \
         -theme-str 'listview {columns: 2; lines: 1;}' \
         -theme-str 'element-text {horizontal-align: 0.5;}' \
         -theme-str 'textbox {horizontal-align: 0.5;}' \
         -dmenu \
         -p 'Confirmation' \
         -mesg 'Are you sure?' \
         -theme ~/.config/rofi/config-power.rasi
  }

  confirm_exit() {
    echo -e "$yes\n$no" | confirm_cmd
  }

  run_rofi() {
    echo -e "$lock\n$suspend\n$logout\n$reboot\n$shutdown" | rofi_cmd
  }

  run_cmd() {
    selected="$(confirm_exit)"
    if [[ "$selected" == "$yes" ]]; then
      case "$1" in
        --shutdown) systemctl poweroff ;;
        --reboot) systemctl reboot ;;
        --suspend)
          mpc -q pause
          amixer set Master mute
          systemctl suspend
          ;;
        --logout)
          if [[ "$DESKTOP_SESSION" == "hyprland" ]]; then
            hyprctl dispatch exit 0
          elif [[ "$DESKTOP_SESSION" == "i3" ]]; then
            i3-msg exit
          elif [[ "$DESKTOP_SESSION" == "plasma" ]]; then
            qdbus org.kde.ksmserver /KSMServer logout 0 0 0
          fi
          ;;
      esac
    fi
  }

  chosen="$(run_rofi)"
  case $chosen in
    $shutdown) run_cmd --shutdown ;;
    $reboot)   run_cmd --reboot ;;
    $lock)
      if command -v hyprlock >/dev/null; then
        hyprlock
      elif command -v betterlockscreen >/dev/null; then
        betterlockscreen -l
      elif command -v i3lock >/dev/null; then
        i3lock
      fi
      ;;
    $suspend)  run_cmd --suspend ;;
    $logout)   run_cmd --logout ;;
  esac
''
