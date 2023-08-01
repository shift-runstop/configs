# files

(subject to change. |ʘ‿ʘ)╯)

## Description

- i3
	* main
	* i3 blocks
- vim
	* goyo (distraction free writing)
	* fzf (fuzzy finder)
	* nerdtree (file explorer)
	* vim-multiple-cursors
	* YouCompleteMe (autocompletion for coding)
	* vim-airline (nice status bar)

- ohmyzsh
	* aussiegeek theme
	* autosuggestions
	* syntax highlighting
	* colored-man-pages

- xorg
	* .xinitrc
		- vscode keyring
		- console kit for void linux
		- network-manager applet for bar (depends on distro)
		- dwmbar volume control (suckless.org dwm)
	* .Xresources
		- colours and opacity for st (suckless.org simple terminal)

## Usage

Substitue package names and package managers as needed
These commands are all based around a debian based distro (apt).

### i3

```sh
$ sudo apt install i3 i3blocks ; mv ./i3 ~/.config
```
### Vim

```sh
$ sudo apt install vim ; mv vimrc ~/.vimrc
```

### ohmyzsh

- curl

```sh
$ sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
$ sudo apt install zsh-autosuggestions zsh-syntax-highlighting
$ mv .zshrc ~
```
- wget

```sh
$ sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
$ mv .zshrc ~
```


### Xorg
```sh
mv ./Xresources ~ ; mv ./xinitrc ~
```
