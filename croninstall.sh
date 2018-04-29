INSTALLDIR=$(dirname "$0")
cd $INSTALLDIR
crontab -l > HACK_UPDATE
echo "0 0 * * TUE $INSTALLDIR/MacUpdater.sh" >> HACK_UPDATE
crontab HACK_UPDATE
rm HACK_UPDATE
