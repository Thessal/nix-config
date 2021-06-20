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
sudo nixos-rebuild build
sudo nixos-rebuild switch
```

