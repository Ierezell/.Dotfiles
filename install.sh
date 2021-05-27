#!/bin/sh
# Installing Zinit Zsh manager
if [[ -d ~/.zinit ]]
then
  echo "Zinit folder already exists"
else
  rm -rf ~/.zinit
  mkdir ~/.zinit
  git clone https://github.com/zdharma/zinit.git ~/.zinit/bin
fi

# Changing shell for zsh
sudo chsh $USER -s /usr/bin/zsh

# Xorg config
rm -f ~/.xinitrc
ln -s ~/.dotfiles/.xinitrc ~/.xinitrc

# Xorg config
rm -f ~/.zprofile
ln -s ~/.dotfiles/.zprofile ~/.zprofile

# I3 config
mkdir -p ~/.config/i3
rm -f ~/.config/i3/config
ln -s ~/.dotfiles/i3/config ~/.config/i3/config

# Zshrc config
rm -f ~/.zshrc
ln -s ~/.dotfiles/.zshrc ~/.zshrc

# Neovim config
mkdir -p ~/.config/nvim
rm -f ~/.config/nvim/init.vim
ln -s ~/.dotfiles/nvim/init.vim ~/.config/nvim/init.vim
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
nvim +'PlugInstall --sync' +qa

# VSCode config
mkdir -p ~/.config/Code/User
rm -f ~/.config/Code/User/keybindings.json
rm -f ~/.config/Code/User/settings.json
ln -s ~/.dotfiles/Code/User/keybindings.json ~/.config/Code/User/keybindings.json
ln -s ~/.dotfiles/Code/User/settings.json ~/.config/Code/User/settings.json

# Picom config
mkdir -p ~/.config/picom
rm -f ~/.config/picom/picom.conf
ln -s ~/.dotfiles/picom/picom.conf ~/.config/picom/picom.conf

# Rofi config
mkdir -p ~/.config/rofi
rm -f ~/.config/rofi/clean.rasi
rm -f ~/.config/rofi/config.rasi
ln -s ~/.dotfiles/rofi/clean.rasi ~/.config/rofi/clean.rasi
ln -s ~/.dotfiles/rofi/config.rasi ~/.config/rofi/config.rasi

# Termite config
mkdir -p ~/.config/termite
rm -f ~/.config/termite/config
ln -s ~/.dotfiles/termite/config ~/.config/termite/config

# Polybar config
mkdir -p ~/.config/polybar
rm -f ~/.config/polybar/config
rm -f ~/.config/polybar/launch.sh
ln -s ~/.dotfiles/polybar/config ~/.config/polybar/config
ln -s ~/.dotfiles/polybar/launch.sh ~/.config/polybar/launch.sh


