set icon="pmagic";
set vmlinuz_img="(loop)/casper/vmlinuz*";
set initrd_img="(loop)/casper/tinycore.gz";
set loopiso=" ";
menuentry $"Boot MiniTool Partition Wizard From ISO" --class $icon{
	set kcmdline="ramdisk_size=409600 root=/dev/ram0 rw";
	linux $vmlinuz_img $kcmdline $loopiso;
	initrd $initrd_img;
}
