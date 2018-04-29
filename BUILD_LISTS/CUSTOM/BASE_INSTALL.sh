echo "Installign Basic Kernel Extensions"
wget https://github.com/RehabMan/HP-ProBook-4x30s-DSDT-Patch/raw/master/download.sh
wget https://github.com/RehabMan/HP-ProBook-4x30s-DSDT-Patch/raw/master/install_downloads.sh
chmod -R +x *
echo " " > /tmp/org.rehabman.download.txt
./download.sh
./install_downloads.sh
