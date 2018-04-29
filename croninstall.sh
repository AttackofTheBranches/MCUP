crontab -l > mycron
echo "* * 25 * * /MCUP/MacUpdater.sh" >> mycron
crontab mycron
rm mycron
