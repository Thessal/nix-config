let
  pkgs = import ./nixpkgs/default.nix {};
  config = { buildInputs = with pkgs; [ youtube-dl magic-wormhole ]; };
in
pkgs.mkShell config

