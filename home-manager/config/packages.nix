{ pkgs, ... }:

{
  home.packages = with pkgs; [
    gh
    brightnessctl
    vim
    vscode
    gnome-text-editor
    wget
    htop
    neofetch
    firefox
    nitrogen
    rofi
    copyq
    redshift
    networkmanagerapplet
    gnome-calendar
    gnome-system-monitor
    gnome-disk-utility
    pamixer
    pavucontrol
    flameshot
    nautilus
    gnome-calculator
    gthumb
    file-roller
    telegram-desktop
    wasistlos
    libreoffice-fresh
    hunspell
    xournalpp
    qbittorrent
    (import ./volume-control.nix { inherit pkgs; })
    (import ./powermenu.nix { inherit pkgs; })
    (import ./brightness-control.nix { inherit pkgs; })
  ];
}
