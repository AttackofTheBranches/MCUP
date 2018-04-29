cd /Volumes/EFI/
rm -rf EFI.bak
cp -R EFI EFI.bak
cd /MCUP/BUILD_LISTS/Gigabyte/PC_Z97X_UD3H 
git clone https://github.com/Dwarven/Hackintosh.git PC_Z97X_UD3H
cd PC_Z97X_UD3H
git pull
cd PC\ Z97X-UD3H

disk
cd ALC1150/
cp -R AppleHDA.kext /System/Library/Extensions/
cd AppleALC/
cp -R AppleALC.kext /System/Library/Extensions/
cd ..
cd ..
cd Intel\ Ethernet\ I217-V/
diskutil mount /dev/disk0s1
cp -R IntelMausiEthernet.kext /Volumes/EFI/EFI/CLOVER/kexts/Other
cd ..
cd cd Other\ Kexts/
cp -R * /Volumes/EFI/EFI/CLOVER/kexts/Other
cd ..
cd cd E3-1231\ v3/
cp *.aml  /Volumes/EFI/EFI/CLOVER/ACPI/patched/
cd ..
cp *.aml  /Volumes/EFI/EFI/CLOVER/ACPI/patched/
cp config-Stable.plist /Volumes/EFI/EFI/CLOVER/config.plist
