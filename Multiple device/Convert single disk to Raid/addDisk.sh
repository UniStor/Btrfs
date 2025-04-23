firstDisk=vda2
newDisk=vdb
mountPoint=/mnt/data
dataRaidType=single #raid1
metadataRaidType=dup

mkdir -p ${mountPoint}
mount /dev/${firstDisk} ${mountPoint}

btrfs device add /dev/${newDisk} ${mountPoint}

btrfs balance start -dconvert=${dataRaidType} -mconvert=${metadataRaidType} ${mountPoint}

# graph: https://askubuntu.com/questions/1026334/convert-a-single-drive-btrfs-disk-into-a-raid1-with-a-second-disk
