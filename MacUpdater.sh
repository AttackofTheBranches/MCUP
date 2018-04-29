cd /MCUP/
COMP_FAMILY=`cat CURRENT_CONFIG/COMP_FAMILY
COMP_MODEL=`cat CURRENT_CONFIG/COMP_MODEL`
echo "Running MCUP Update"
echo "Selected Family is $COMP_FAMILY"
echo "Selected Build is $COMP_MODEL"
echo "Installing..."

if [ $COMP_FAMILY = "Probook_Elitebook_Zbook" ]; then
if [ ! -d "Projects" ]; then
  mkdir Projects
fi
cd Projects
if [ ! -d "probook.git" ]; then
  git clone https://github.com/RehabMan/HP-ProBook-4x30s-DSDT-Patch probook.git
fi
cd /MCUP/Projects/probook.git/
git pull
./download.sh
./install_downloads.sh
curl --fail -o ./ssdtPRGen.sh https://raw.githubusercontent.com/Piker-Alpha/ssdtPRGen.sh/master/ssdtPRGen.sh
chmod +x ./ssdtPRGen.sh
( echo y ; echo y; echo n; echo n ) | sudo ./ssdtPRGen.sh
sudo ./mount_efi.sh /
cp ~/Library/ssdtPRGen/ssdt.aml /Volumes/EFI/EFI/Clover/ACPI/patched/SSDT.aml
./build.sh


#WHERE SHIT GET’S COMPLEX

#!/bin/sh
echo "Installing for $COMP_MODEL"
./install_acpi.sh $COMP_MODEL



./build.sh
zip
value=`cat zipnum.txt`
num=$(($value + 1))
echo $num > zipnum.txt
cd /Volumes/EFI/
rm -rf EFI.bak
cp -R EFI EFI.bak
cd /Volumes/EFI/EFI/Clover/
zip $num.zip config.plist
rm config.plist
cd /MCUP/Projects/probook.git/

cp ./config/$config.plist /Volumes/EFI/EFI/Clover/config.plist
fi