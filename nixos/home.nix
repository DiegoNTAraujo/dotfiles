{ config, lib, pkgs, ... }:

{
  imports = [
    ./hm-modules/dotfiles-link.nix
  ];

  home.username = "diego";
  home.homeDirectory = "/home/diego";

  programs.firefox.enable = true;

  programs.alacritty.enable = true;
  stylix.targets.alacritty.colors.enable = true;
  
  programs.vscode.enable = true;
  programs.fastfetch.enable = true;

  home.packages = with pkgs; [
    python314
    jetbrains.pycharm-community-bin
  ];

  home.stateVersion = "25.11";
}
