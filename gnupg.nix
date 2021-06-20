let
  pkgs = import ./nixpkgs/default.nix {};
  config = { buildInputs = with pkgs; [  gnupg pinentry pinentry-curses ]; };
in
pkgs.mkShell config
# gpg2 --pinentry-mode loopback --generate-key
# gpg2 --list-keys
