wget https://hackintosher.com/wp-content/uploads/High-Sierra-10.13.3-17D47-Desktop-EFI.zip
unzip * BUILD
cd BUILD/EFI
rm -rf /Volumes/EFI/EFI/*
cp -R * /Volumes/EFI/EFI/

#Needs darkwake=8
#Needs Audio Inject=7
