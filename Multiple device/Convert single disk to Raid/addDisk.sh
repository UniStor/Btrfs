firstDisk=vda2
newDisk=vdb
mountPoint=/mnt/data

mkdir -p ${mountPoint}
mount /dev/${firstDisk} ${mountPoint}

btrfs device add /dev/${newDisk} ${mountPoint}
