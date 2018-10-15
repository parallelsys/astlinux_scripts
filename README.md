# astlinux_scripts
Most of my AstLinux work you will find it here.
AstLinux short for Asterisk Linux can be found @ [astlinux](https://www.astlinux-project.org)
#

In the dialplan_examples folder you will find just that... Dialplan examples to be use with asterisk. One popular with Astlinux is the black list DB found in AstLinux.
#
Check scripts IE: check for recordings/fax and email... are under the "check_scripts" folder.
#
The script check_lenny checks for lenny recordings and emails them.

The script runs in the background and sleeps for 30 seconds.
#
The scrip stream-mp3.sh is a simple shell wrap that you can use to pipe to a stream for moh.
This gets set on your musiconhold.conf.
Please see musiconhold.conf for example of use.

Please note that I am not responsible in any way, shape, or form for your doings with MOH. You must own licensing to use streams as MOH. IE: You must pay royalties, etc....

For more information please go to: [MOH at voip-info](https://www.voip-info.org/music-on-hold/)

**To make it simple, The use of unlicensed music streams or radio stations for MOH is ILLEGAL.**
#
The check_fax script came from the AstLinux mailing list. This has been my base for several of my scripts.
The script sleeps for 30 seconds and checks for faxes... Once it finds a fax it converts them to pdf and emails them.
#
The rclone folder contains the script to install rclone in AstLinux. [rclone](https://rclone.org/) Belongs to:
[Nick Craig-Wood](https://www.craig-wood.com/nick/)

Please visit their [rclone github page](https://github.com/ncw/rclone#storage-providers) 

From the rclone page:

Rclone *("rsync for cloud storage")* is a command line program to sync files and directories to and from
 different cloud storage providers.

In my case I use it for Backblaze B2 sense there is no native backblaze support in AstLinux.
Fore more details please visit their site: [rclone](https://rclone.org/)

**Note: The install script is a work in progress. Will upload soon**

More to come.
