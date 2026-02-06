{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
    buildInputs = with pkgs; [
        go
        gopls
        go-tools
    ];

    shellHook = ''
        echo "nix shell env"
    '';
}

