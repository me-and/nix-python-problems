let
  nixpkgs = builtins.fetchTarball "https://github.com/NixOS/nixpkgs/archive/refs/tags/24.05.tar.gz";
  pkgs = import nixpkgs {};
in
  pkgs.callPackage ./package.nix {}
