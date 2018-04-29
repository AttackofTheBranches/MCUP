#Set working directory to script location
INSTALLDIR=$(dirname "$0")
cd $INSTALLDIR
#Get config files
COMP_FAMILY=`cat CURRENT_CONFIG/COMP_FAMILY`
COMP_MODEL=`cat CURRENT_CONFIG/COMP_MODEL`
echo "Running MCUP Update"
echo "Selected Family is $COMP_FAMILY"
echo "Selected Build is $COMP_MODEL"
echo "Installing..."
#Run Probook_Elitebook_Zbook installer
if [ $COMP_FAMILY = "Probook_Elitebook_Zbook" ]; then
  #Match ACPI to Clover Configs
BUILD_LISTS/Probook_Elitebook_Zbook/ACPI_TO_CONFIG.sh
#Run RehabInstaller
BUILD_LISTS/Probook_Elitebook_Zbook/RehabInstaller.sh
fi
#Run if Lenovo
if [ $COMP_FAMILY = "Lenovo" ]; then
  #RUn lenovo grabber
BUILD_LISTS/Lenovo/Lenovo_Install_Picker.sh
fi
