{ config, lib, pkgs, ... }:

{
  imports = [
    ./modules/home-manager/hyprland.nix
  ];

  home.username = "diego";
  home.homeDirectory = "/home/diego";

  programs.firefox.enable = true;
  stylix.targets.firefox.enable = false;

  programs.alacritty.enable = true;
  programs.fastfetch.enable = true;
  programs.vscode.enable = true;
  programs.gh.enable = true;
  
  programs.mangohud.enable = true;
  stylix.targets.mangohud.enable = false;

  home.packages = with pkgs; [
    python314
    goverlay
    vulkan-tools # Goverlay dependency
    protonup-qt # Utility to manage Proton-GE for Steam
  ];

  home.stateVersion = "25.11";
}
