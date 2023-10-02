# dotfiles

## Install chezmoi

### Ubuntu
```sh
sh -c "$(curl -fsLS get.chezmoi.io)"
```

### Termux
```sh
pkg install chezmoi
```

## Download dotfiles
```sh
chezmoi init --apply --ssh dragonnull64
```
