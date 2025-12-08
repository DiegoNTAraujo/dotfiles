{ config, pkgs, ... }:

let
  dotfiles_folder = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/.dotfiles";

in
{
  home.username = "diego";
  home.homeDirectory = "/home/diego";

  home.file.".config/hypr/hyprland.conf".source = "${dotfiles_folder}/hypr/hyprland.conf";
  home.file.".config/hypr/hyprpaper.conf".source = "${dotfiles_folder}/hypr/hyprpaper.conf";
  
  programs.firefox.enable = true;
  programs.vscode.enable = true;

  home.stateVersion = "25.11";
}
