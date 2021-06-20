# Bootstrapping NixOS from riscv ubuntu
https://github.com/NixOS/nixpkgs/pull/115406

# ## From risc64 machine
# ifconfig
# # inet 192.168.10.248
# #sudo install -d -m755 -o $(id -u) -g $(id -g) /nix
# #mkdir /nix/store
# 
# ## From x64 nixos machine : 
# nix --version
# #nix (Nix) 2.3.10
# #Please refer the github link if you are using nix 2.4 or newer
# nix build -f ./nixpkgs/pkgs/stdenv/linux/make-bootstrap-tools-cross.nix riscv64.build -o result-rv64-bootstrap-tools-stage0
# nix hash-path --type sha256 --base16 ./result-rv64-bootstrap-tools-stage0/on-server/busybox
# # f1b8d9d48caca988877ae6ab689e6a6a7ee3895b810fc24224e1835f57bd0335
# nix hash-file --type sha256 --base16 ./result-rv64-bootstrap-tools-stage0/on-server/bootstrap-tools.tar.xz
# # eb4f500bd194f90cbe763eb39ba47cd1844194808fb2ff9d38694b4e261fffb4
# nix add-to-store ./result-rv64-bootstrap-tools-stage0/on-server/busybox
# # /nix/store/75hcn4ni9644fab0y9wl0wn6sbmjlsv7-busybox
# nix add-to-store ./result-rv64-bootstrap-tools-stage0/on-server/bootstrap-tools.tar.xz
# # /nix/store/jfzmdmzs32f2ryy4blzk6a0n8wnwwn4b-bootstrap-tools.tar.xz
# # nix-build --impure --expr 'with (import ./nixpkgs {}).pkgsCross.riscv64; nix.override { boost = boost17x; enableStatic = true; }' 
# # /nix/store/v4yl14yrfixz1qb11mdb5i6bgm1hlzkc-nix-riscv64-unknown-linux-gnu-2.3.12
# nix-copy-closure --to ubuntu@192.168.10.248 /nix/store/75hcn4ni9644fab0y9wl0wn6sbmjlsv7-busybox
# nix-copy-closure --to ubuntu@192.168.10.248 /nix/store/jfzmdmzs32f2ryy4blzk6a0n8wnwwn4b-bootstrap-tools.tar.xz

## From risc64 machine
sudo apt install nix-bin
git clone -b riscv git@github.com:zhaofengli/nixpkgs.git
#git clone -b riscv git@github.com:Thessal/nixpkgs.git

