INSTALLDIR=$PWD
cd $INSTALLDIR
COMP_FAMILY=`cat $INSTALLDIR/CURRENT_CONFIG/COMP_FAMILY`
COMP_MODEL=`cat $INSTALLDIR/CURRENT_CONFIG/COMP_MODEL`
COMP_CONFIG=`cat $INSTALLDIR/CURRENT_CONFIG/COMP_CONFIG`
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
cd /MCUP/BUILD_LISTS/Probook_Elitebook_Zbook/Projects/probook.git/
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
cd /Volumes/EFI/
rm -rf EFI.bak
cp -R EFI EFI.bak
cd /Volumes/EFI/EFI/Clover/
rm config.plist
cd /MCUP/BUILD_LISTS/Probook_Elitebook_Zbook/Projects/probook.git/

cp ./config/$COMP_CONFIG /Volumes/EFI/EFI/Clover/config.plist
fi
