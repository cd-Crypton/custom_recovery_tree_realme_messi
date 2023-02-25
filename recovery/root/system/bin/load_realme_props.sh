#!/system/bin/sh
# This script is needed to load properties for oplus devices

# Unofficial Name
messi=$(getprop ro.boot.prjname)

# Official Names
realme9=RMX3521
ota_asserts=RMX3521,RE54E2,RE54E2L1

# Oplus-related Names
realme_asserts=qssi,ossi

sleep 3

# Re-set some specific properties to avoid flashing error
case $messi in
     "2172F")
          resetprop ro.twrp.target.devices $ota_asserts,$realme_asserts
          resetprop ro.product.device $realme9
          ;;
esac

exit 0