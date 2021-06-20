# nix files

My nix setup.

this configuration is shared among VMs and risc-v machine

## Memo
* nixpkgs
```
git pull -C ~/nixpkgs pull # Can I include git command in default.nix?
nix-build
```

* nix shell
```
nix-shell
nix-env -f '<nixpkgs>' -qaP -A  packagename
nix-shell -p stdenv 
```

* nixos
```
vim /etc/nixos/configuration.nix
sudo nixos-rebuild -I nixpkgs="./nixpkgs" build
sudo nixos-rebuild switch

nix-channel --add https://nixos.org/channels/nixos-21.05 nixos
nix-channel --list
sudo nixos-rebuild switch --upgrade
```

