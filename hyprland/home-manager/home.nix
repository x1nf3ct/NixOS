{
  imports = [
    ./config/starship.nix
    ./config/kitty.nix
    ./config/gtk.nix
    ./config/dunst.nix
    ./config/hyprland.nix
    ./config/fastfetch.nix
    ./config/waybar.nix
    ./config/rofi.nix
    ./config/hyprpaper.nix
    ./config/hyprlock.nix
    ./config/mpv.nix
    ./config/dconf.nix
    ./config/fonts.nix
    ./config/packages.nix
  ];

  home.enableNixpkgsReleaseCheck = false;
  home.stateVersion = "25.05";
}
