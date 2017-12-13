#!/bin/bash

FILE="/etc/lsb-release"

clear

echo '###########################'
echo "What release should we use?"
echo '###########################'
echo " "
echo 1. LinuxMint 18.2 Sonya
echo 2. Ubuntu 16.04 Xenial
echo ' '

write_to_file()
{
case "$release" in 
"1")
cat <<EOM >$FILE
DISTRIB_ID=LinuxMint
DISTRIB_RELEASE=18.2
DISTRIB_CODENAME=sonya
DISTRIB_DESCRIPTION="Linux Mint 18.2 Sonya"
EOM
echo ;
echo "Making LinuxMint"
echo ;
;;
"2")
cat <<EOM >$FILE
DISTRIB_ID=Ubuntu
DISTRIB_RELEASE=16.04
DISTRIB_CODENAME=xenial
DISTRIB_DESCRIPTION="Ubuntu 16.04 LTS"
EOM
echo ;
echo "Making Ubuntu"
echo ;
;;
*) echo "You typed: $release. Try harder."; check_read_input;;
esac
}

check_read_input()
{
read -n 1 -s release
write_to_file
}

check_read_input

echo ;
echo "Finished writing release info"

exit 0





