{
  fileSystems = {
    "/".options = [ "compress=zstd" ];
    "/home".options = [ "compress=zstd" ];
    "/nix".options = [ "compress=zstd" "noatime" ];
    "/mnt/Data" = {
      device = "/dev/disk/by-uuid/49ae99c2-2d28-4758-9af3-ac93ddcbba0c";
      fsType = "ext4";
      options = [ "defaults" "noatime" "barrier=1" "data=ordered" "errors=remount-ro" "commit=300" "nofail" ];
    };
  };
  systemd.tmpfiles.rules = [ "d /mnt/Data 0775 x1nf3ct users -" ];
}
