# astlinux_scripts
Most of my AstLinux work you will find it here.
The blacklist_dialplan is an example of how you could use the blacklist db
found in AstLinux.

#
The script check_lenny checks for lenny recordings and emails them.

The script runs in the background and sleeps for 30 seconds.
#
The scrip stream-mp3.sh is a simple shell wrap that you can use to pipe to a stream for moh.
This gets set on your musiconhold.conf.

[default]
mode=custom
format=ulaw
application=/bin/bash /mnt/kd/bin/stream-mp3.sh http://ice.somafm.com/groovesalad

**Please note that I am not responsible in any way, shape, or form for your doings with MOH. You must own licensing to use streams as MOH. IE: You must pay royalties, etc....
For more information please go to: [MOH at voip-info](https://www.voip-info.org/music-on-hold/)
**To make it simple, The use of unlicensed music streams or radio stations for MOH is ILLEGAL.**

More to come.
