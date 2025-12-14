{ config, lib, pkgs, ... }:

{
  programs.hyprland.enable = true;
  services.displayManager.ly.enable = true;
  
  environment.systemPackages = with pkgs; [
    alacritty
    waybar
    rofi
    hyprlock
    hypridle
    hyprpaper
    hyprsunset
    hyprshot
    brightnessctl
    pavucontrol
    networkmanagerapplet
  ];

  fonts.packages = with pkgs; [
    font-awesome
    nerd-fonts.jetbrains-mono 
  ];
}
