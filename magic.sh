#!/bin/bash

# My file depends of this
sudo apt install vim tmux git curl -y

# My config files
curl -o ~/.tmux.conf https://raw.githubusercontent.com/0xlantog/terminal-tools-settings/master/.tmux.conf
curl -o ~/.vimrc https://raw.githubusercontent.com/0xlantog/terminal-tools-settings/master/.vimrc
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Fonts
sudo apt install fonts-roboto fonts-inconsolata -y

# I3
sudo apt install i3 i3wm i3status i3lock compton feh -y

# Gaps
sudo apt install git libxcb1-dev libxcb-keysyms1-dev libpango1.0-dev libxcb-util0-dev libxcb-icccm4-dev \
libyajl-dev libstartup-notification0-dev libxcb-randr0-dev libev-dev libxcb-cursor-dev libxcb-xinerama0-dev \
libxcb-xkb-dev libxkbcommon-dev libxkbcommon-x11-dev autoconf libxcb-xrm0 libxcb-xrm-dev automake libxcb-shape0-dev -y \
&& git clone https://www.github.com/Airblader/i3 i3-gaps && cd i3-gaps && autoreconf --force --install \
&& rm -rf build/ && mkdir -p build && cd build/ && ../configure --prefix=/usr --sysconfdir=/etc --disable-sanitizers \
&& make && sudo make install

# Background
curl -o ~/Pictures/wallpaper.jpg http://www.wallpaperup.com/uploads/wallpapers/2015/04/08/658128/6dce3e6d31eff2996064a7a2334b906f.jpg

# Configure i3
mkdir -p ~/.config/{i3,i3status,compton}

curl -o ~/.config/i3/config https://raw.githubusercontent.com/0xlantog/terminal-tools-settings/master/i3-config
mkdir ~/.config/i3status/config && curl -o ~/.config/i3status/config/i3status.conf \
https://raw.githubusercontent.com/0xlantog/terminal-tools-settings/master/i3-status.conf

