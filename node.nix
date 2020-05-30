{pkgs ? import <nixpkgs> {}}: {
  shell = pkgs.mkShell {
    buildInputs = [
      pkgs.yarn
    ];
  };
}
