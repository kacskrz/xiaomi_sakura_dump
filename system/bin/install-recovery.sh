#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:29789518:9db793207676420dd719a049b47da4a403a6f5b9; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:23563594:e617636af3bb648ffe59a3223359f607bbe05cdb EMMC:/dev/block/bootdevice/by-name/recovery 9db793207676420dd719a049b47da4a403a6f5b9 29789518 e617636af3bb648ffe59a3223359f607bbe05cdb:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
