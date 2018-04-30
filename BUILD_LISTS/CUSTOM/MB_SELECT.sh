INSTALLDIR=$PWD
cd $INSTALLDIR
MB_TYPE=`cat CUSTOM_CONFIG/MB_TYPE`

if [ $MB_TYPE = "ASRock" ]; then
  #Show ASRock supported boards
cat PARTS/MBS/ASROCK_LIST

read -p "Please select your ASRock Motherboard: (# then RETURN) " MB_MODEL

#Save computer file to config file
sed "${MB_MODEL}q;d" PARTS/MBS/ASROCK > CUSTOM_CONFIG/MB_MODEL
#Load user's family
fi
