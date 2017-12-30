#!/bin/sh

source /etc/preinit
script_init

profileFolder="$rootfs/etc/profiles/$1"

# Check for usb mod
if [ -d "$mountpoint/media/$modname/saves/" ]; then
  profileFolder="$mountpoint/media/$modname/profiles/$1"
fi

[ ! -d "$profileFolder" ] && mkdir -p "$profileFolder"
