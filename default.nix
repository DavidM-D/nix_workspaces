{pkgs ? import <nixpkgs> {}}:
let
  rust = import ./rust.nix { inherit pkgs; };
  haskell = import ./haskell.nix {inherit pkgs; };
  javascript = import ./node.nix {inherit pkgs; };
  merge_envs = import ./merge_envs.nix {inherit pkgs; };
in {
  rust = rust.shell;
  haskell = haskell.shell;
  javascript = javascript.shell;
  merge_envs = merge_envs.merge_envs;
}
