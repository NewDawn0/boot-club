{
  description = "Grub-themes";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs";
    utils = {
      url = "github:NewDawn0/nixUtils";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = {
    self,
    utils,
    ...
  } @ inputs: {
    overlays.default = final: prev: let
      t = import ./themes.nix {pkgs = prev;};
    in {
      grubThemes = (prev.grubThemes or {}) // t.themes;
    };
    formatter.x86_64-linux = inputs.nixpkgs.legacyPackages.x86_64-linux.alejandra;
    packages = utils.lib.eachSystem {} (pkgs: let
      t = import ./themes.nix {inherit pkgs;};
    in (t.themes // {default = t.themes.minegrub;}));
  };
}
