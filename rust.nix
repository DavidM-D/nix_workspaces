{ pkgs ? import <nixpkgs> {}, ... }: {
  shell = pkgs.mkShell {
    buildInputs = [
      pkgs.cargo
      pkgs.clippy
      pkgs.cargo-watch
      pkgs.cargo-tree
      pkgs.rustfmt
      pkgs.rls
    ];
  };
}
