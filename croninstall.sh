#Set Installer dir
INSTALLDIR=$(pwd)
cd $INSTALLDIR
# Make cron file
crontab -l > HACK_UPDATE
# Echo update command into cron file
sudo echo "0 0 * * TUE $INSTALLDIR/MacUpdater.sh" >> HACK_UPDATE
# Install cron updater
crontab HACK_UPDATE
# Remove cron file
rm HACK_UPDATE
