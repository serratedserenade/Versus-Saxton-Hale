set -ev
wget http://sourcemod.net/smdrop/$SMVERSION/ -O - | grep "\.tar\.gz" | sed 's/^.*"sourcemod/sourcemod/;s/\.tar\.gz".*$/.tar.gz/' | tail --lines=1 > sourcemod
wget --input-file=sourcemod --base=http://sourcemod.net/smdrop/$SMVERSION/
tar -xzf $(cat sourcemod)
cd addons/sourcemod/scripting
wget "http://www.doctormckay.com/download/scripting/include/morecolors.inc" -O include/morecolors.inc --no-check-certificate
wget "http://hg.limetech.org/projects/tf2items/tf2items_source/raw-file/tip/pawn/tf2items.inc" -O include/tf2items.inc
if [ $BUILD_WITH_STEAMTOOLS == 1 ]; then
	wget "https://code.limetech.org/diffusion/ST/browse/master/plugin/steamtools.inc?view=raw" -O include/steamtools.inc
fi
if [ $BUILD_WITH_RTD == 1 ]; then
	wget "https://forums.alliedmods.net/attachment.php?attachmentid=115795" -O include/rtd.inc
fi
if [ $BUILD_WITH_GOOMBA == 1 ]; then
	wget "https://github.com/Flyflo/SM-Goomba-Stomp/raw/master/addons/sourcemod/scripting/include/goomba.inc" -O include/goomba.inc
fi
chmod +x spcomp
mkdir compiled
ARGS="TRAVIS_OVERRIDE="
if [ $EASTER_BUNNY_BUILD == 1 ]; then
	ARGS="$ARGS EASTER_BUNNY_ON="
fi
if [ $MEDIGUN_OVERRIDE_BUILD == 1 ]; then
	ARGS="$ARGS OVERRIDE_MEDIGUNS_ON="
fi
ARGS="$ARGS saxtonhale.sp"
./spcomp $ARGS