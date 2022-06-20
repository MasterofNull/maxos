{ config, pkgs, lib, ... }: {
  services.trilium-server = {
    enable = true;
    dataDir = "/home/user/Data/trilium";
    host = "0.0.0.0";
    port = 9020;
  };
}
