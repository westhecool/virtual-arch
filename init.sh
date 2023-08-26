mount --bind /dev /rootfs/dev
mount --bind /proc /rootfs/proc
mount --bind /sys /rootfs/sys
mount --bind /tmp /rootfs/tmp
cp /etc/resolv.conf /rootfs/etc/resolv.conf
if [ ! -f /proc/sys/fs/binfmt_misc/register ]; then
    mount binfmt_misc -t binfmt_misc /proc/sys/fs/binfmt_misc
fi
find /proc/sys/fs/binfmt_misc -type f -name 'qemu-*' -exec sh -c 'echo -1 > {}' \;
sleep 1
bash /qemu-binfmt-conf.sh --qemu-suffix "-static" --qemu-path "/qemu"
bash /run.sh $@