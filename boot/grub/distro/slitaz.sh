set icon="gnu-linux";
set vmlinuz_img="(loop)/boot/bzImage";
set initrd_img="(loop)/boot/rootfs4.gz";
if test -f (loop)/boot/rootfs3.gz; then
	initrd_img="${initrd_img} (loop)/boot/rootfs3.gz"
fi;
if test -f (loop)/boot/rootfs2.gz; then
	initrd_img="${initrd_img} (loop)/boot/rootfs2.gz"
fi;
if test -f (loop)/boot/rootfs1.gz; then
	initrd_img="${initrd_img} (loop)/boot/rootfs1.gz"
fi;

menuentry $"Boot Slitaz Rolling From ISO" --class $icon{
	enable_progress_indicator=1;
	set kcmdline="root=/dev/null video=-32 rw";
	linux $vmlinuz_img $kcmdline;
	initrd $initrd_img;
}
