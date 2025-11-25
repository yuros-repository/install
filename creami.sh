#!/bin/bash


clear &&
echo "                                                       /yy"
echo "                                                      |__/"
echo "  /yyyyyyy  /yyyyyy   /yyyyyy   /yyyyyy  /yyyyyy/yyyy  /yy"
echo " /yy_____/ /yy__  yy /yy__  yy |____  yy| yy_  yy_  yy| yy"
echo "| yy      | yy  \__/| yyyyyyyy  /yyyyyyy| yy \ yy \ yy| yy"
echo "| yy      | yy      | yy_____/ /yy__  yy| yy | yy | yy| yy"
echo "|  yyyyyyy| yy      |  yyyyyyy|  yyyyyyy| yy | yy | yy| yy"
echo " \_______/|__/       \_______/ \_______/|__/ |__/ |__/|__/"
echo ""
echo "+------------+--------------------------------------------------+"
echo "|                  LINUX CREAMI INSTALATION                     |"
echo "+------------+--------------------------------------------------+"
echo "| Author     |  Al Muhdil Karim                                 |"
echo "| Mainteners |  Ibnu Dzaky                                      |"
echo "| Version    |  v0.01                                           |"
echo "| License    |  BSD 2-Clause Simplified License                 |"
echo "| Copyright  |  almuhdilkarim@2025                              |"
echo "+------------+--------------+-----------------------------------+"
sleep 2 &&

pacman -Syy git neovim --noconfirm &&

if [[ -d "/install" ]];then
    rm -fr /install
fi

git clone https://github.com/linux-creami/install.git /install &&
nvim /install/post/config && 
/bin/bash /install/prep.sh &&
sleep 2 &&
umount -R /mnt &&
reboot