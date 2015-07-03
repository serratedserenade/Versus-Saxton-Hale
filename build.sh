set -ev
wget http://sourcemod.net/smdrop/$SMVERSION/ -O - | grep "\.tar\.gz" | sed 's/^.*"sourcemod/sourcemod/;s/\.tar\.gz".*$/.tar.gz/' | tail --lines=1 > sourcemod
wget --input-file=sourcemod --base=http://sourcemod.net/smdrop/$SMVERSION/
tar -xzf $(cat sourcemod)
cd addons/sourcemod/scripting
wget "http://www.doctormckay.com/download/scripting/include/morecolors.inc" -O include/morecolors.inc --no-check-certificate
wget "http://hg.limetech.org/projects/tf2items/tf2items_source/raw-file/tip/pawn/tf2items.inc" -O include/tf2items.inc
wget "https://code.limetech.org/diffusion/ST/browse/master/plugin/steamtools.inc?view=raw" -O include/steamtools.inc
chmod +x spcomp
mkdir compiled
if [ $EASTER_BUNNY_BUILD == 1 ]; then
	./spcomp EASTER_BUNNY_ON= saxtonhale.sp
else
	./spcomp saxtonhale.sp
fi