INSTALLDIR=$PWD
diskutil mount /dev/disk0s1
cd /Volumes/EFI/
rm -rf EFI.bak
cp -R EFI EFI.bak
cd $PWD/BUILD_LISTS/Lenovo/Y470
git clone https://github.com/Dwarven/Hackintosh.git Y470
cd Y470
git pull
cd Lenovo\ Y470
unzip kexts.zip
cd kexts
mv * /Volumes/EFI/EFI/CLOVER/kexts/Other
cp *.aml  /Volumes/EFI/EFI/CLOVER/ACPI/patched/
cp config.plist /Volumes/EFI/EFI/CLOVER/config.plist
