COMP_MODEL=`cat /MCUP/CURRENT_CONFIG/COMP_MODEL`
cd BUILD_LISTS/Lenovo
if [ $COMP_MODEL = Y470 ]; then
	Y470/Y470_Installer.sh
fi

if [ $COMP_MODEL = ZBook_G3_skylake ]; then
	echo "config_ZBook_G3_Skylake.plist" > /MCUP/CURRENT_CONFIG/COMP_CONFIG
fi