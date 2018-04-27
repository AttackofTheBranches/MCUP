cd /MCUP/
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
COMP_TYPE=`cat /MCUP/COMP_TYPE`
echo “Installing for $COMP_TYPE"
./install_acpi.sh $COMP_TYPE



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
cp ./config/config_6x70p.plist /Volumes/EFI/EFI/Clover/config.plist
