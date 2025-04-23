firstDisk=vda2
newDisk=vdb
mountPoint=/mnt/data

mkdir -p ${mountPoint}
mount /dev/${firstDisk} ${mountPoint}

btrfs device add /dev/${newDisk} ${mountPoint}

#graph https://askubuntu.com/questions/1026334/convert-a-single-drive-btrfs-disk-into-a-raid1-with-a-second-disk
