cd /MCUP/
echo "Welcome to The Hackintosh Updater"

echo "1. Probook/Elitebook/Zbook"

read -p "Please select your Computer Family: (# then RETURN) " FAM

sed "${FAM}q;d" FAMILIES_LIST > COMP_FAMILY

COMP_FAMILY=`cat COMP_FAMILY`
echo "Showing Builds for $COMP_FAMILY"

if [ $COMP_FAMILY = "Probook_Elitebook_Zbook" ]; then
echo ""
echo "01. 2x60"
echo "02. 2x70"
echo "03. 2x70_hires" 
echo "04. 4x30s"
echo "05. 4x30s_hires"
echo "06. 4x40s"
echo "07. 4x40s_hires"
echo "08. 5x30"
echo "09. 5x30_hires"
echo "10. 6x60"
echo "11. 6x60_hires"
echo "12. 6x70"
echo "13. 6x70_hires"
echo "14. 8x60"
echo "15. 8x60_hires"
echo "16. 8x70"
echo "17. 8x70_hires"
echo "18. 9x70"
echo "19. 9x70_hires"
echo "20. 9x80"
echo "21. 4x0g0"
echo "22. 4x0g0_hires"
echo "23. 4x0g1_ivy" 
echo "24. 4x0g1_ivy_hires"
echo "25. 4x0g1_haswell"
echo "26. 450g1_haswell"
echo "27. 4x0g2_broadwell"
echo "28. 4x0g3_skylake"
echo "29. 4x0g2_haswell"
echo "30. 4x0g4_kabylake"
echo "31. 4x0g5_kabylake-r"
echo "32. 6x0g1_haswell"
echo "33. 6x0g2_skylake"
echo "34. 8x0g1_ivy"
echo "35. 8x0g1_ivy_hires" 
echo "36. 8x0g1_haswell"
echo "37. 820g2_broadwell"
echo "38. 840g2_broadwell"
echo "39. 850g2_broadwell"
echo "40. 8x0g2_haswell"
echo "41. 8x0g3_skylake"
echo "42. 1020g1_broadwell"
echo "43. 1030g1_skylake"
echo "44. 1040g1_haswell" 
echo "45. 1040g3_skylake"
echo "46. ZBook_G2_haswell"
echo "47. ZBook_G2_haswell_alc280"
echo "48. ZBook_G1_haswell"
echo "49. ZBook_G2_broadwell"
echo "50. ZBook_G3_skylake"
fi

read -p "Please select your build: (# then RETURN) " MODEL

sed "${MODEL}q;d" BUILD_LISTS/Probook_Elitebook_Zbook > COMP_MODEL

COMP_MODEL=`cat COMP_MODEL`
echo "Installing for $COMP_MODEL"
clear
/MCUP/MacUpdater.sh

