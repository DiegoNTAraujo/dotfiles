{ config, lib, pkgs, ... }:

let
  dotfiles_folder = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/.dotfiles";

in

{
  home.file.".config/hypr/hyprland.conf".source = "${dotfiles_folder}/hypr/hyprland.conf";
  home.file.".config/hypr/hyprlock.conf".source = "${dotfiles_folder}/hypr/hyprlock.conf";
  home.file.".config/hypr/hypridle.conf".source = "${dotfiles_folder}/hypr/hypridle.conf";
  home.file.".config/hypr/hyprpaper.conf".source = "${dotfiles_folder}/hypr/hyprpaper.conf";
  home.file.".config/hypr/hyprsunset.conf".source = "${dotfiles_folder}/hypr/hyprsunset.conf";
  home.file.".config/waybar/config.jsonc".source = "${dotfiles_folder}/waybar/config.jsonc";
  home.file.".config/waybar/style.css".source = "${dotfiles_folder}/waybar/style.css";
  home.file.".config/rofi/config.rasi".source = "${dotfiles_folder}/rofi/config.rasi";
}