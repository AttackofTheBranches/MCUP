cd /MCUP/
echo "Welcome to The Hackintosh Updater"

echo "1. Probook/Elitebook/Zbook"

read -p "Please select your Computer Family: (# then RETURN) " FAM

sed "${FAM}q;d" FAMILIES_LIST > CURRENT_CONFIG/COMP_FAMILY

COMP_FAMILY=`cat CURRENT_CONFIG/COMP_FAMILY`
echo "Showing Builds for $COMP_FAMILY"

if [ $COMP_FAMILY = "Probook_Elitebook_Zbook" ]; then
cat BUILD_LISTS/Probook_Elitebook_Zbook/COMP_BUILDS
fi
read -p "Please select your build: (# then RETURN) " MODEL

sed "${MODEL}q;d" BUILD_LISTS/$COMP_FAMILY/ACPI_CONFIG > CURRENT_CONFIG/COMP_MODEL

if [ $COMP_FAMILY = "Probook_Elitebook_Zbook" ]; then
BUILD_LISTS/Probook_Elitebook_Zbook/ACPI_TO_CONFIG.sh
fi

COMP_MODEL=`cat CURRENT_CONFIG/COMP_MODEL`
echo "Installing for $COMP_MODEL"
clear
/MCUP/MacUpdater.sh

