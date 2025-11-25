#!/bin/bash

pacman -Syy git --noconfirm &&

if [[ -d "/install" ]];then
    rm -fr /install
fi

git clone https://github.com/linux-creami/install.git /install &&
/bin/bash /install/prep.sh