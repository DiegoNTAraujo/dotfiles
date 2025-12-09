{ config, lib, pkgs, ... }:

{
  programs.hyprland.enable = true;
  services.displayManager.ly.enable = true;
  services.blueman.enable = true;
  services.power-profiles-daemon.enable = true; 
  
  environment.systemPackages = with pkgs; [
    alacritty
    waybar
    rofi
    hyprlock
    hypridle
    hyprpaper
    hyprshot
    brightnessctl
    pavucontrol
    networkmanagerapplet
  ];

  fonts.packages = with pkgs; [
    font-awesome 
  ];
}
