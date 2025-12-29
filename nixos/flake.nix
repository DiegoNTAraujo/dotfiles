{
  description = "NixOS configuration"; 
  
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    stylix = {
      url = "github:nix-community/stylix";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = inputs@{ self, nixpkgs, home-manager, stylix, ... }:
  let
    system = "x86_64-linux";
    username = "diego";
  in {
    nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {    
      inherit system;
      modules = [                                           
        ./configuration.nix
        home-manager.nixosModules.home-manager {             
          home-manager.useGlobalPkgs = true;                 
          home-manager.useUserPackages = true;               
          home-manager.users.${username} = import ./home.nix;
        }                                                
        stylix.nixosModules.stylix                          
      ];                                                    
    };
  };                                                     
}                                                       
