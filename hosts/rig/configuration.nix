{ config, pkgs, lib, ... }:

{
  networking.hostName = "rig";
  services.xserver.videoDrivers = [ "nvidia" ];
  virtualisation.docker.enableNvidia = true;

  # X11 / i3
  services.xserver = {
    enable = true;
    windowManager.i3.enable = true;

    displayManager = {
      defaultSession = "none+i3";
      lightdm.enable = true;
      autoLogin.enable = true;
      autoLogin.user = "user";
    };
  };

  # Enable cron service
  services.cron = {
    enable = true;
    systemCronJobs = [
      "45 15 * * *        user    ${pkgs.rsync}/bin/rsync -avz --no-perms /home/user/Data/ admin@192.168.0.254:/volume1/k8s-syncthing-data/data/"
      "0 16 * * *        user    ${pkgs.rsync}/bin/rsync -avz --no-perms /home/user/Camera/Camera admin@192.168.0.254:/volume1/k8s-syncthing-data/camera/"
    ];
  };
}