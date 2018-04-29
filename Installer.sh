# Getting working dir for script
INSTALLDIR=$(dirname "$0")
#Change to script's directory
cd $INSTALLDIR
#Display welcome screen
echo "Welcome to The Hackintosh Updater"
#Display computer families
cat FAMILIES
#Get user's family
read -p "Please select your Computer Family: (# then RETURN) " FAM

#Save computer file to config file
sed "${FAM}q;d" FAMILIES_LIST > CURRENT_CONFIG/COMP_FAMILY
#Load user's family
COMP_FAMILY=`cat CURRENT_CONFIG/COMP_FAMILY`
echo "Showing Builds for $COMP_FAMILY"

#Print supported machine based on user input
if [ $COMP_FAMILY = "Probook_Elitebook_Zbook" ]; then
cat BUILD_LISTS/$COMP_FAMILY/COMP_BUILDS

read -p "Please select your build: (# then RETURN) " MODEL

sed "${MODEL}q;d" BUILD_LISTS/$COMP_FAMILY/ACPI_CONFIG > CURRENT_CONFIG/COMP_MODEL

COMP_MODEL=`cat CURRENT_CONFIG/COMP_MODEL`
#Run config matcher
BUILD_LISTS/Probook_Elitebook_Zbook/ACPI_TO_CONFIG.sh
fi

#Print supported machine based on user input
if [ $COMP_FAMILY = "Lenovo" ]; then
cat  /MCUP/BUILD_LISTS/$COMP_FAMILY/COMP_BUILDS
echo ""
read -p "Please select your build: (# then RETURN) " MODEL

sed "${MODEL}q;d" BUILD_LISTS/$COMP_FAMILY/COMP_MODELS > CURRENT_CONFIG/COMP_MODEL

COMP_MODEL=`cat CURRENT_CONFIG/COMP_MODEL`
fi



#Run updater
echo "Installing for $COMP_MODEL"
clear
$INSTALLDIR/MacUpdater.sh
