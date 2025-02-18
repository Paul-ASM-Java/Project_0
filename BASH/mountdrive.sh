#!/bin/bash
#Script for quick-mount ntfs flash drive
lsblk
echo -r "Enter name of device from LSBLK data" DRV
sudo mount -t ntfs-3g /dev/$DRV /home/pavel/sfd
