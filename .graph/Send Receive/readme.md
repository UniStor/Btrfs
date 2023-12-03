sch: https://www.google.com/search?q=btrfs+send+receive

# Guide:
- https://forum.manjaro.org/t/howto-use-btrfs-send-receive/135808
- https://blogs.oracle.com/linux/post/btrfs-sendreceive-helps-to-move-and-backup-your-data

Copy with progress
`btrfs send /home/.snapshots/24/snapshot | pv | btrfs receive /mnt/BACKUP/24`
