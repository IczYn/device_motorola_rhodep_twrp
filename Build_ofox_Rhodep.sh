#!/bin/bash

## TWRP
#############################
export USE_CCACHE=1
#export BR_MAINTAINER=PizzaG
. build/envsetup.sh
m clean
lunch twrp_rhodep-eng
#mka bootimage
mka adbd bootimage
#mka vendorbootimage
#mka recoveryimage
echo
echo " Recovery Should Be Built"
echo ""
mv $OUT/boot.img ~/Desktop/OranegFox_12-Rhodep.img

#mv $OUT/recovery.tar /media/pizzag/Android/Uploads/Recoveries/TWRP_Recovery-beyond2qlte.tar
#cd /media/pizzag/Android/Recoveries/TWRP/10
#make clean
read
#############################
#############################

