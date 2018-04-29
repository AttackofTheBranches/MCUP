INSTALLDIR=$PWD
cd $INSTALLDIR
COMP_MODEL=`cat $INSTALLDIR/CURRENT_CONFIG/COMP_MODEL`

if [ $COMP_MODEL = 2x60 ]; then
	echo "config_2x60p.plist" > $INSTALLDIR/CURRENT_CONFIG/COMP_CONFIG
fi

if [ $COMP_MODEL = 2x70 ]; then
	echo "config_2x10p.plist" > $INSTALLDIR/CURRENT_CONFIG/COMP_CONFIG
fi

if [ $COMP_MODEL = 2x70_hires ]; then
	echo "config_2x10p.plist" > $INSTALLDIR/CURRENT_CONFIG/COMP_CONFIG
fi

if [ $COMP_MODEL = 4x30s ]; then
	echo "config_4x30s.plist" > $INSTALLDIR/CURRENT_CONFIG/COMP_CONFIG
fi

if [ $COMP_MODEL = 4x30s_hires ]; then
	echo "config_4x30s.plist" > $INSTALLDIR/CURRENT_CONFIG/COMP_CONFIG
fi

if [ $COMP_MODEL = 4x40s ]; then
	echo "config_4x40s.plist" > $INSTALLDIR/CURRENT_CONFIG/COMP_CONFIG
fi

if [ $COMP_MODEL = 4x40s_hires ]; then
	echo "config_4x40s.plist" > $INSTALLDIR/CURRENT_CONFIG/COMP_CONFIG
fi

if [ $COMP_MODEL = 5x30 ]; then
	echo "config_5x30m.plist" > $INSTALLDIR/CURRENT_CONFIG/COMP_CONFIG
fi

if [ $COMP_MODEL = 5x30_hires ]; then
	echo "config_5x30m.plist" > $INSTALLDIR/CURRENT_CONFIG/COMP_CONFIG
fi

if [ $COMP_MODEL = 6x60 ]; then
	echo "config_6x60p.plist" > $INSTALLDIR/CURRENT_CONFIG/COMP_CONFIG
fi

if [ $COMP_MODEL = 6x60_hires ]; then
	echo "config_6x60p.plist" > $INSTALLDIR/CURRENT_CONFIG/COMP_CONFIG
fi

if [ $COMP_MODEL = 6x70 ]; then
	echo "config_6x70p.plist" > $INSTALLDIR/CURRENT_CONFIG/COMP_CONFIG
fi

if [ $COMP_MODEL = 6x70_hires ]; then
	echo "config_6x70p.plist" > $INSTALLDIR/CURRENT_CONFIG/COMP_CONFIG
fi

if [ $COMP_MODEL = 8x60 ]; then
	echo "config_8x60p.plist" > $INSTALLDIR/CURRENT_CONFIG/COMP_CONFIG
fi

if [ $COMP_MODEL = 8x60_hires ]; then
	echo "config_8x60p.plist" > $INSTALLDIR/CURRENT_CONFIG/COMP_CONFIG
fi

if [ $COMP_MODEL = 8x70 ]; then
	echo "config_8x70p.plist" > $INSTALLDIR/CURRENT_CONFIG/COMP_CONFIG
fi

if [ $COMP_MODEL = 8x70_hires ]; then
	echo "config_8x70p.plist" > $INSTALLDIR/CURRENT_CONFIG/COMP_CONFIG
fi

if [ $COMP_MODEL = 9x70 ]; then
	echo "config_9x70m.plist" > $INSTALLDIR/CURRENT_CONFIG/COMP_CONFIG
fi

if [ $COMP_MODEL = 9x70_hires ]; then
	echo "config_9x70m.plist" > $INSTALLDIR/CURRENT_CONFIG/COMP_CONFIG
fi

if [ $COMP_MODEL = 9x80 ]; then
	echo "config_9x80m.plist" > $INSTALLDIR/CURRENT_CONFIG/COMP_CONFIG
fi

if [ $COMP_MODEL = 4x0g0 ]; then
	echo "config_4x0s_G0.plist" > $INSTALLDIR/CURRENT_CONFIG/COMP_CONFIG
fi

if [ $COMP_MODEL = 4x0g0_hires ]; then
	echo "config_4x0s_G0.plist" > $INSTALLDIR/CURRENT_CONFIG/COMP_CONFIG
fi

if [ $COMP_MODEL = 4x0g1_ivy ]; then
	echo "config_4x0s_G1_Ivy.plist" > $INSTALLDIR/CURRENT_CONFIG/COMP_CONFIG
fi

if [ $COMP_MODEL = 4x0g1_haswell ]; then
	echo "config_4x0s_G1_Haswell.plist" > $INSTALLDIR/CURRENT_CONFIG/COMP_CONFIG
fi

if [ $COMP_MODEL = 450g1_haswell ]; then
	echo "config_4x0s_G1_Haswell.plist" > $INSTALLDIR/CURRENT_CONFIG/COMP_CONFIG
fi

if [ $COMP_MODEL = 4x0g2_broadwell ]; then
	echo "config_4x0s_G2_Broadwell.plist" > $INSTALLDIR/CURRENT_CONFIG/COMP_CONFIG
fi

if [ $COMP_MODEL = 4x0g3_skylake ]; then
	echo "config_4x0s_G3_Skylake.plist" > $INSTALLDIR/CURRENT_CONFIG/COMP_CONFIG
fi

if [ $COMP_MODEL = 4x0g2_haswell ]; then
	echo "config_4x0s_G2_Haswell.plist" > $INSTALLDIR/CURRENT_CONFIG/COMP_CONFIG
fi

if [ $COMP_MODEL = 4x0g4_kabylake ]; then
	echo "config_4x0s_G4_Kabylake.plist" > $INSTALLDIR/CURRENT_CONFIG/COMP_CONFIG
fi

if [ $COMP_MODEL = 4x0g5_kabylake-r ]; then
	echo "config_4x0s_G5_Kabylake-R.plist" > $INSTALLDIR/CURRENT_CONFIG/COMP_CONFIG
fi

if [ $COMP_MODEL = 6x0g1_haswell ]; then
	echo "config_6x0s_G1_Haswell.plist" > $INSTALLDIR/CURRENT_CONFIG/COMP_CONFIG
fi

if [ $COMP_MODEL = 6x0g2_skylake ]; then
	echo "config_6x0_G2_Skylake.plist" > $INSTALLDIR/CURRENT_CONFIG/COMP_CONFIG
fi

if [ $COMP_MODEL = 6x0g2_skylake ]; then
	echo "config_6x0_G2_Skylake.plist" > $INSTALLDIR/CURRENT_CONFIG/COMP_CONFIG
fi

if [ $COMP_MODEL = 8x0g1_ivy ]; then
	echo "config_8x0s_G1_Ivy.plist" > $INSTALLDIR/CURRENT_CONFIG/COMP_CONFIG
fi

if [ $COMP_MODEL = 8x0g1_ivy_hires ]; then
	echo "config_8x0s_G1_Ivy.plist" > $INSTALLDIR/CURRENT_CONFIG/COMP_CONFIG
fi

if [ $COMP_MODEL = 8x0g1_haswell ]; then
	echo "config_8x0s_G1_Haswell.plist" > $INSTALLDIR/CURRENT_CONFIG/COMP_CONFIG
fi

if [ $COMP_MODEL = 820g2_broadwell ]; then
	echo "config_8x0s_G2_Broadwell.plist" > $INSTALLDIR/CURRENT_CONFIG/COMP_CONFIG
fi

if [ $COMP_MODEL = 840g2_broadwell ]; then
	echo "config_8x0s_G2_Broadwell.plist" > $INSTALLDIR/CURRENT_CONFIG/COMP_CONFIG
fi

if [ $COMP_MODEL = 850g2_broadwell ]; then
	echo "config_8x0s_G2_Broadwell.plist" > $INSTALLDIR/CURRENT_CONFIG/COMP_CONFIG
fi

if [ $COMP_MODEL = 8x0g2_haswell ]; then
	echo "config_8x0s_G2_Haswell.plist" > $INSTALLDIR/CURRENT_CONFIG/COMP_CONFIG
fi

if [ $COMP_MODEL = 8x0g3_skylake ]; then
	echo "config_8x0_G3_Skylake.plist" > $INSTALLDIR/CURRENT_CONFIG/COMP_CONFIG
fi

if [ $COMP_MODEL = 1020g1_broadwell ]; then
	echo "config_1020_G1_Broadwell.plist" > $INSTALLDIR/CURRENT_CONFIG/COMP_CONFIG
fi

if [ $COMP_MODEL = 1030g1_skylake ]; then
	echo "config_1030_G1_Skylake.plist" > $INSTALLDIR/CURRENT_CONFIG/COMP_CONFIG
fi

if [ $COMP_MODEL = 1040g1_haswell ]; then
	echo "config_1040_G1_Haswell.plist" > $INSTALLDIR/CURRENT_CONFIG/COMP_CONFIG
fi

if [ $COMP_MODEL = 1040g3_skylake ]; then
	echo "config_1040_G3_Skylake.plist" > $INSTALLDIR/CURRENT_CONFIG/COMP_CONFIG
fi

if [ $COMP_MODEL = ZBook_G2_haswell ]; then
	echo "config_ZBook_G2_Haswell.plist" > $INSTALLDIR/CURRENT_CONFIG/COMP_CONFIG
fi

if [ $COMP_MODEL = ZBook_G2_haswell_alc280 ]; then
	echo "config_ZBook_G2_Haswell_ALC280.plist" > $INSTALLDIR/CURRENT_CONFIG/COMP_CONFIG
fi

if [ $COMP_MODEL = ZBook_G1_haswell ]; then
	echo "config_ZBook_G1_Haswell.plist" > $INSTALLDIR/CURRENT_CONFIG/COMP_CONFIG
fi

if [ $COMP_MODEL = ZBook_G2_broadwell ]; then
	echo "config_ZBook_G2_Broadwell.plist" > $INSTALLDIR/CURRENT_CONFIG/COMP_CONFIG
fi

if [ $COMP_MODEL = ZBook_G3_skylake ]; then
	echo "config_ZBook_G3_Skylake.plist" > $INSTALLDIR/CURRENT_CONFIG/COMP_CONFIG
fi
