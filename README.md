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
[Nick Craig-Wood](https://www.craig-wood.com/nick/) @ncw. 

From the rclone page: Rclone is a command line program to sync files and directories to and from:
# Rclone

Rclone *("rsync for cloud storage")* is a command line program to sync files and directories to and from
 different cloud storage providers.

# Storage providers

  * Amazon Drive [:page_facing_up:](https://rclone.org/amazonclouddrive/) ([See note](https://rclone.org
/amazonclouddrive/#status))
  * Amazon S3 [:page_facing_up:](https://rclone.org/s3/)
  * Backblaze B2 [:page_facing_up:](https://rclone.org/b2/)
  * Box [:page_facing_up:](https://rclone.org/box/)
  * Ceph [:page_facing_up:](https://rclone.org/s3/#ceph)
  * DigitalOcean Spaces [:page_facing_up:](https://rclone.org/s3/#digitalocean-spaces)
  * Dreamhost [:page_facing_up:](https://rclone.org/s3/#dreamhost)
  * Dropbox [:page_facing_up:](https://rclone.org/dropbox/)
  * FTP [:page_facing_up:](https://rclone.org/ftp/)
  * Google Cloud Storage [:page_facing_up:](https://rclone.org/googlecloudstorage/)
  * Google Drive [:page_facing_up:](https://rclone.org/drive/)
  * HTTP [:page_facing_up:](https://rclone.org/http/)
  * Hubic [:page_facing_up:](https://rclone.org/hubic/)
  * Jottacloud [:page_facing_up:](https://rclone.org/jottacloud/)
  * IBM COS S3 [:page_facing_up:](https://rclone.org/s3/#ibm-cos-s3)
  * Memset Memstore [:page_facing_up:](https://rclone.org/swift/)
  * Mega [:page_facing_up:](https://rclone.org/mega/)
  * Microsoft Azure Blob Storage [:page_facing_up:](https://rclone.org/azureblob/)
  * Microsoft OneDrive [:page_facing_up:](https://rclone.org/onedrive/)
  * Minio [:page_facing_up:](https://rclone.org/s3/#minio)
  * Nextcloud [:page_facing_up:](https://rclone.org/webdav/#nextcloud)
  * OVH [:page_facing_up:](https://rclone.org/swift/)
  * OpenDrive [:page_facing_up:](https://rclone.org/opendrive/)
  * Openstack Swift [:page_facing_up:](https://rclone.org/swift/)
  * Oracle Cloud Storage [:page_facing_up:](https://rclone.org/swift/)
  * ownCloud [:page_facing_up:](https://rclone.org/webdav/#owncloud)
  * pCloud [:page_facing_up:](https://rclone.org/pcloud/)
  * put.io [:page_facing_up:](https://rclone.org/webdav/#put-io)
  * QingStor [:page_facing_up:](https://rclone.org/qingstor/)
  * Rackspace Cloud Files [:page_facing_up:](https://rclone.org/swift/)
  * SFTP [:page_facing_up:](https://rclone.org/sftp/)
  * Wasabi [:page_facing_up:](https://rclone.org/s3/#wasabi)
  * WebDAV [:page_facing_up:](https://rclone.org/webdav/)
  * Yandex Disk [:page_facing_up:](https://rclone.org/yandex/)
  * The local filesystem [:page_facing_up:](https://rclone.org/local/)

#

In my case I use it for Backblaze B2 sense there is no native backblaze support in AstLinux.
Fore more details please visit their site: [rclone](https://rclone.org/)

**Note: The install script is a work in progress. Will upload soon**

More to come.
