{ config, lib, pkgs, ... }:

{
    programs.virt-manager.enable = true;
    virtualisation = {
        libvirtd.enable = true;
        spiceUSBRedirection.enable = true;
    };
    users.groups.libvirtd.members = ["diego"];
}