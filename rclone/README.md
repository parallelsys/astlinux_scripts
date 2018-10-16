**Initial release of rclone for AstLinux.**

rcloneinstall_astlinux.sh Installation script. Straight forward script.
Download it to your astlinux linux system and run.
#
startup.sh is to be set to run on rc.local after installation. This script sets
your files and symlinks after your system reboots. AstLinux filesystem is under unionfs and most files
get erased after after a reboot. Persistent storage only exists under /mnt/kd
The file must be added to run under /mnt/kd/rc.local

The install script will do this for you.
#

rclone-auto.sh This is the script you set on cron to do your backups.
The installer will place it under /mnt/kd/.rclone/files/rclone-auto.sh
Must be edit to fit your env!.

The script will also install a cron job.
the cron is just an example and is disable by default "#"

Backup script credit goes to Jared Males.
#
**Beware: Under development.**
