# Config files
- i3
	* main
	* i3 blocks
- vim
- ohmyzsh
- xorg

## Usage

### i3 (debian based)
```sh
$ sudo apt install i3 i3blocks ; mv ./i3 ~/.config
```
### Vim
```sh
$ sudo apt install vim ; mv vimrc ~/.vimrc
```

### onmyzsh
- curl
```sh
$ sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```
- wget
```sh
$ sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
```

### Xorg
```sh
mv ./Xresources ~ ; mv ./xinitrc ~
```
