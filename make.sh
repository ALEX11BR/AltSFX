#!/bin/sh
#This script makes the .cat file and oves it to the right place, along with other useful files, in *nix systems
#getting the directory of this script, upon which it will get all the other files 
bdir=$(dirname $(readlink -f $0))
catcodec -e $bdir/src/altsfx.cat
echo "........................................................................."
echo "Moving $bdir/src/altsfx.cat to OpenTTD baseset folder"
mv $bdir/src/altsfx.cat ~/.openttd/baseset/altsfx
echo "Have a MD5 checksum here:"
md5sum ~/.openttd/baseset/altsfx/altsfx.cat
echo "........................................................................."
echo "Moving metadata, license, changelog, and readme files to OpenTTD baseset folder"
cp $bdir/altsfx.obs $bdir/changelog.txt $bdir/license.txt $bdir/readme.txt ~/.openttd/baseset/altsfx
echo "........................................................................."
echo "Done. For real, this time."
