#!/bin/bash

###################################################################################
# rclone installation script for AstLinux.                                        #
# rclone Copyright (C) 2012 by Nick Craig-Wood https://www.craig-wood.com/nick/   #
# Installation script for AstLinux done by FFuentes (parallelsys)                 #
# https://github.com/parallelsys/astlinux_scripts                                 #
# Script can be adjusted for any embedded file system with a persistent slice.    #
# v1.0a                                                                           #
##################################################################################

###
# We make the temp directory
tmp=/tmp/rclone-install

###
#We set the filename which should never change unless OS type changes.
rc=rclone-current-linux-amd64.zip

###
#curl staging area
fileget=https://downloads.rclone.org/$rc
fileget2=https://astlinux.darktcp.net/scripts/ca-bundle.crt
fileget3=https://astlinux.darktcp.net/scripts/startup.sh
###
#unzip staging area
unzipdir=rclone_tmp_unzip

###
#AstLinux staging.
ca=/etc/pki/tls/certs
rclonefolder=/mnt/kd/.rclone
rclonebin=/mnt/kd/.rclone/bin
rclonefiles=/mnt/kd/.rclone/files
aststart=/mnt/kd/.rclone/startup
rclocal=/mnt/kd/rc.local
############################
## Now bash runner starts ##
############################
mkdir $tmp
cd $tmp
for i in curl;do
	$i -O $fileget
	if [ $? -eq 0 ]; then
		mkdir $unzipdir
		unzip $rc -d $unzipdir
		cd $unzipdir/*
		mkdir -p $rclonefolder
		mkdir $rclonebin
		mkdir $rclonefiles
		cp rclone $rclonebin
		chmod 755 $rclonebin/rclone
	else
		echo Unable to fetch rclone. Is there Internet acces? Exiting.
		exit
	fi

for i in ls;do
	echo Checking for cert bundle for rclone dependency.
	$i $ca 2>/dev/null
	if [ $? -ne 0 ]; then
		echo Not found. Satisfying dependency.
		mkdir -p $ca
		cd $ca
		curl -O $fileget2
		cp ca-bundle.crt $rclonefiles
		cd $rclonefolder
		echo Creating files.
		touch rclone.conf
		touch excludes
		echo Creating links.
		ln -s /mnt/kd/.rclone/bin/rclone /usr/sbin/rclone
		echo Staging startup script.
		mkdir $aststart
		cd $aststart
		curl -O $fileget3
		echo "###Setup for rclone files to run at startup###" > $rclocal
                echo "/bin/sh /mnt/kd/.rclone/startup/startup.sh" >> $rclocal
                echo "###                Done                    ###" >> $rclocal
		echo Done.
	else
		cd $rclonefolder
		touch rclone.conf
		touch excludes
		ln -s /mnt/kd/.rclone/bin/rclone /usr/sbin/rclone
		echo $ca is present. No need for crt installation. Finishing.
		echo "###Setup for rclone files to run at startup###" > $rclocal
                echo "/bin/sh /mnt/kd/.rclone/startup/startup.sh" >> $rclocal
                echo "###                Done                    ###" >> $rclocal
	fi
done
done

rm -rf $tmp

#Frome rclone install script#

version=`$rclonebin/rclone --version 2>>errors | head -n 1`

printf "\n${version} has successfully installed."
printf '\nNow run "rclone config --config /mnt/kd/.rclone/rclone.conf" for setup.
Check https://rclone.org/docs/ for more details.\n\n'

exit 0
