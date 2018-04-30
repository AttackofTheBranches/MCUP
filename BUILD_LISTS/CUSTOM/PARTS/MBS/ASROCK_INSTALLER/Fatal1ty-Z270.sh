wget http://hackintosher.com/wp-content/uploads/2017/06/hackintosher.com-ASRock-Fatal1ty-Z270-EFI-1.zip
unzip * BUILD
cd BUILD/EFI
rm -rf /Volumes/EFI/EFI/*
cp -R * /Volumes/EFI/EFI/
mv /Volumes/EFI/EFI/CLOVER/config.plist /Volumes/EFI/EFI/CLOVER/config-GFX.plist
mv /Volumes/EFI/EFI/CLOVER/config-iGPU.plist /Volumes/EFI/EFI/CLOVER/config.plist
