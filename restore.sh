echo "Have things shitted the fuck up?"
mkdir /Volumes/EFI
mount -t msdos /dev/disk0s1 /Volumes/EFI
cd /Volumes/EFI
if [ -d "EFI.bak" ]; then
echo "Backup found!"
rm -rf EFI
mv EFI.bak EFI
echo "Finished!"
exit
fi
echo "Backup not found."
exit

