#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:26486060:18a958912418f5a8acc561892c2e3786688289f4; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:25756968:9cb43c8b642ec49f8ad9f7d869d556a0dff433fb EMMC:/dev/block/bootdevice/by-name/recovery 18a958912418f5a8acc561892c2e3786688289f4 26486060 9cb43c8b642ec49f8ad9f7d869d556a0dff433fb:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
