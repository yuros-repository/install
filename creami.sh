#!/bin/bash

pacman -Syy git --noconfirm &&
git clone https://github.com/linux-creami/install.git /install &&
/bin/bash /install/prep.sh