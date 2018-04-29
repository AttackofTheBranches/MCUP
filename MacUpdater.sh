cd /MCUP/
COMP_FAMILY=`cat CURRENT_CONFIG/COMP_FAMILY`
COMP_MODEL=`cat CURRENT_CONFIG/COMP_MODEL`
echo "Running MCUP Update"
echo "Selected Family is $COMP_FAMILY"
echo "Selected Build is $COMP_MODEL"
echo "Installing..."

if [ $COMP_FAMILY = "Probook_Elitebook_Zbook" ]; then
BUILD_LISTS/Probook_Elitebook_Zbook/RehabInstaller.sh
fi