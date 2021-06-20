# Bootstrapping NixOS from riscv ubuntu




# https://github.com/NixOS/nixpkgs/pull/115406
nix build -f ./nixpkgs/pkgs/stdenv/linux/make-bootstrap-tools-cross.nix riscv64.build -o result-rv64-bootstrap-tools-stage0

nix hash-path --type sha256 --base16 ./result-rv64-bootstrap-tools-stage0/on-server/busybox
# f1b8d9d48caca988877ae6ab689e6a6a7ee3895b810fc24224e1835f57bd0335
nix hash-file --type sha256 --base16 ./result-rv64-bootstrap-tools-stage0/on-server/bootstrap-tools.tar.xz
# eb4f500bd194f90cbe763eb39ba47cd1844194808fb2ff9d38694b4e261fffb4

nix add-to-store ./result-rv64-bootstrap-tools-stage0/on-server/busybox
# /nix/store/75hcn4ni9644fab0y9wl0wn6sbmjlsv7-busybox
nix add-to-store ./result-rv64-bootstrap-tools-stage0/on-server/bootstrap-tools.tar.xz
# /nix/store/jfzmdmzs32f2ryy4blzk6a0n8wnwwn4b-bootstrap-tools.tar.xz

... ongoing
