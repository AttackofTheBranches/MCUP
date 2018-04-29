crontab -l > HACK_UPDATE
echo "0 0 * * TUE /MCUP/MacUpdater.sh" >> HACK_UPDATE
crontab HACK_UPDATE
rm HACK_UPDATE
