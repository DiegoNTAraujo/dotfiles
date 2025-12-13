{ config, lib, pkgs, ... }:

{
  imports = [
    ./modules/home-manager/dotfiles.nix
  ];

  home.username = "diego";
  home.homeDirectory = "/home/diego";

  programs.firefox.enable = true;
  programs.alacritty.enable = true;
  programs.fastfetch.enable = true;
  programs.vscode.enable = true;
  programs.mangohud.enable = true;

  home.packages = with pkgs; [
    python314
    jetbrains.pycharm-community-bin
  ];

  home.stateVersion = "25.11";
}
