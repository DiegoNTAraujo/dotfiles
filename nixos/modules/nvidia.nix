{ config, lib, pkgs, ... }:

{
  hardware.graphics.enable = true;
  services.xserver.videoDrivers = [ "nvidia" ];
  hardware.nvidia = {
    open = false;  
    package = config.boot.kernelPackages.nvidiaPackages.latest;
  };
}
