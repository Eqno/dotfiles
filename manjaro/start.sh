#!/bin/sh
cp ./config ~/.i3/
sudo cp ./profile /etc/

sudo cp ./pacman.conf /etc/
sudo cp ./mirrorlist /etc/pacman.d/
cp ./.Xresources ~/.Xresources 

sudo pacman -S vim neovim python3 python2 xsel nodejs clash
cp ./update-clash ~/.local/bin/
update-clash
clash

sudo cp ./proxychains.conf /etc/

curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

cp ./config.json ~/.config/yay/

yay -S python2-pip python3-pip
sudo cp ./pip.conf /etc/
pip2 install neovim
pip3 install neovim

cp ./.vimrc ~/
ln -s ~/.vimrc ~/.config/nvim/init.vim
ln -s ~/.vim/autoload/plug.vim ~/.config/nvim/autoload/plug.vim

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
curl https://sh.rustup.rs -sSf | sh

curl -sL install-node.now.sh | sh
curl --compressed -o- -L https://yarnpkg.com/install.sh | bash

# 桌面壁纸：/home/eqnoxx/Pictures/Wallpapers/background.jpg
# 登陆界面壁纸：sudo vim /etc/lightdm/slick-greeter.conf
# 系统语言：sudo vim /etc/default/locale
# 窗口透明软件：sudo pacman -S picom
# 终端软件：sudo pacman -S urxvt
# 终端配置文件：vim .Xresources
