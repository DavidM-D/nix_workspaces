{ pkgs ? import <nixpkgs> {}, ... }:
  let
    ide = import (builtins.fetchTarball "https://github.com/cachix/ghcide-nix/tarball/master") {};
    oldGhc = import (builtins.fetchTarball  "https://github.com/mpickering/old-ghc-nix/tarball/master") {};
 in {
 shell = pkgs.mkShell {
  buildInputs = [
    pkgs.cabal-install
    oldGhc.ghc865
    ide.ghcide-ghc865
  ];
  };
 }
