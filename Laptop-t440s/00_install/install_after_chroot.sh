#!/bin/sh

BASE_DIR=`dirname $0`
CONF_DIR="${BASE_DIR}/conf"

cp "${CONF_DIR}/locale.gen" /etc/locale.gen
locale-gen

echo LANG=en_US.UTF-8 > /etc/locale.conf
export LANG=en_US.UTF-8

cp "${CONF_DIR}/vconsole.conf" /etc/vconsole.conf

ln -s /usr/share/zoneinfo/Asia/Tokyo /etc/localtime

hwclock --systohc --utc

echo t440s > /etc/hostname

cp "${CONF_DIR}/pacman.conf" /etc/pacman.conf
pacman -Sy

pacman -S dosfstools gummiboot dialog
gummiboot install
cp "${CONF_DIR}/gummiboot.conf" /boot/loader/entries/arch.conf

passwd

exit
reboot
