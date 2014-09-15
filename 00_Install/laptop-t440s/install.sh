#!/bin/sh

BASE_DIR=`dirname $0`
CONF_DIR="${BASE_DIR}/conf"

loadkeys us
setfont Lat2-Terminus16

cp "${CONF_DIR}/locale.gen" /etc/locale.gen
locale-gen
export LANG=ja_JP.UTF-8

# confirm network
ping -c 1 www.google.com
if [ $? != 0 ]
then
  wifi-menu wlp3s0
fi

gdisk /dev/sda < ${CONF_DIR}/gdisk_input
mkfs.fat -F32 /dev/sda1
mkswap /dev/sda2
swapon /dev/sda2
mkfs.ext4 /dev/sda3
mkfs.ext4 /dev/sda4
mkfs.ext4 /dev/sda5

mount /dev/sda4 /mnt
mkdir /mnt/boot /mnt/home /mnt/var
mount /dev/sda1 /mnt/boot
mount /dev/sda3 /mnt/var
mount /dev/sda5 /mnt/home

cp "${CONF_DIR}/mirrorlist" /etc/pacman.d/mirrorlist
pacstrap /mnt base base-devel

genfstab -U -p /mnt >> /mnt/etc/fstab

arch-chroot /mnt /bin/bash
