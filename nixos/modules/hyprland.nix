{ config, lib, pkgs, ... }:

{
  programs.hyprland.enable = true;
  services.displayManager.ly.enable = true;

  environment.systemPackages = with pkgs; [
    alacritty
    waybar
    rofi
    hyprpaper
  ];

  fonts.packages = with pkgs; [
    font-awesome 
  ];
}
