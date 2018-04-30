INSTALLDIR=$PWD
cd $INSTALLDIR
echo "Custom Hackintosh Creation Kit"

#GET BOARD FAMILY
cat PARTS/MB_LIST
#Get user's family
read -p "Please select your Motherboard Family: (# then RETURN) " MB_TYPE

#Save computer MB TYPE file to config file
sed "${MB_TYPE}q;d" PARTS/MB_LIST > CUSTOM_CONFIG/MB_TYPE
#Load user's family

GPU_TYPE=`cat CUSTOM_CONFIG/GPU_TYPE`

#GET GPU FAMILY
cat PARTS/GPU_LIST
#Get user's family
read -p "Please select your GPU Family: (# then RETURN) " GPU_TYPE

#Save computer file to config file
sed "${GPU_TYPE}q;d" PARTS/GPU > CUSTOM_CONFIG/GPU_TYPE
#Load user's family

GPU_TYPE=`cat CUSTOM_CONFIG/GPU_TYPE`
