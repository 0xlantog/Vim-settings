#!/bin/bash

sudo apt install vim tmux git curl network-manager network-manager-gnome xorg pulseaudio -y

# My config files
curl -o ~/.tmux.conf https://raw.githubusercontent.com/0xlantog/terminal-tools-settings/master/.tmux.conf
curl -o ~/.vimrc https://raw.githubusercontent.com/0xlantog/terminal-tools-settings/master/.vimrc

cd $HOME
if [ ! -d ".vim" ]; then
	mkdir -p .vim
fi

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Fonts
sudo apt install fonts-roboto fonts-inconsolata -y

# I3
sudo apt install i3 i3-wm i3status i3lock compton feh rxvt-unicode-256color -y

sudo chmod 777 /opt/ && cd /opt/

# Gaps
sudo apt install git libxcb1-dev libxcb-keysyms1-dev libpango1.0-dev libxcb-util0-dev libxcb-icccm4-dev \
libyajl-dev libstartup-notification0-dev libxcb-randr0-dev libev-dev libxcb-cursor-dev libxcb-xinerama0-dev \
libxcb-xkb-dev libxkbcommon-dev libxkbcommon-x11-dev autoconf libxcb-xrm0 libxcb-xrm-dev automake libxcb-shape0-dev -y \
&& git clone https://www.github.com/Airblader/i3 i3-gaps && cd i3-gaps && autoreconf --force --install \
&& rm -rf build/ && mkdir -p build && cd build/ && ../configure --prefix=/usr --sysconfdir=/etc --disable-sanitizers \
&& make && sudo make install

cd $HOME

if [ ! -d "Wallpapers" ]; then
	mkdir Wallpapers && cd Wallpapers
fi

# Background
curl -o wallpaper.jpg https://wallpapercave.com/wp/SGiOGhl.jpg

# Configure i3
mkdir -p ~/.config/{i3,i3status,compton}

curl -o ~/.config/i3/config https://raw.githubusercontent.com/0xlantog/terminal-tools-settings/master/i3-config
mkdir ~/.config/i3status/config && curl -o ~/.config/i3status/config/i3status.conf \
https://raw.githubusercontent.com/0xlantog/terminal-tools-settings/master/i3-status.conf

# For Pwn and Rev
sudo apt install gdb ltrace strace -y
git clone https://github.com/longld/peda.git /opt/peda
echo "set disassembly-flavor intel\nsource /opt/peda/peda.py" > ~/.gdbinit

# Bash case insensitive
echo "set completion-ignore-case on" > ~/.inputrc

# Bash profile
curl -o ~/.bashrc https://raw.githubusercontent.com/0xlantog/terminal-tools-settings/master/.bashrc

# Firefox
sudo apt-get install firefox-esr -y

# Colors of urxvt
curl -o ~/.Xdefaults https://raw.githubusercontent.com/0xlantog/terminal-tools-settings/master/.Xresources

# Compton
curl -o ~/.config/compton.conf https://raw.githubusercontent.com/0xlantog/terminal-tools-settings/master/compton.conf
