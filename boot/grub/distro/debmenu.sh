menuentry $"Debian Live" --class debian{
	set kcmdline="boot=live config";
	linux $vmlinuz_img $kcmdline $debian_user $debian_union $debian_locale $linux_extra;
	initrd $initrd_img;
}
menuentry $"Devuan Live" --class devuan{
	set kcmdline="boot=live config username=devuan";
	linux $vmlinuz_img $kcmdline $debian_union $debian_locale $linux_extra;
	initrd $initrd_img;
}
menuentry $"Tails Live" --class tails{
	set kcmdline="boot=live config live-media=removable nopersistence noprompt timezone=Etc/UTC block.events_dfl_poll_msecs=1000 splash noautologin module=Tails slab_nomerge slub_debug=FZP mce=0 vsyscall=none page_poison=1 union=aufs";
	linux $vmlinuz_img $kcmdline $debian_locale $linux_extra;
	initrd $initrd_img;
}
if [ "${debian_user}" == "username=root" ]; then
	menuentry "[+] Root Login"{
		export debian_user="username=user";
		configfile ${prefix}/distro/debmenu.sh;
	}
	else
	menuentry "[ ] Root Login"{
		export debian_user="username=root";
		configfile ${prefix}/distro/debmenu.sh
	}
fi;
if [ "${debian_union}" == "union=overlay" ]; then
	menuentry "[+] Overlay (Clonezilla/GParted/Deepin)"{
		export debian_union="";
		configfile ${prefix}/distro/debmenu.sh;
	}
	else
	menuentry "[ ] Overlay (Clonezilla/GParted/Deepin)"{
		export debian_union="union=overlay";
		configfile ${prefix}/distro/debmenu.sh
	}
fi;
if [ "${debian_locale}" == "locales=zh_CN.UTF-8" ]; then
	menuentry "[+] Chinese locale"{
		export debian_locale="";
		configfile ${prefix}/distro/debmenu.sh;
	}
elif [ "${debian_locale}" == "locales=zh_TW.UTF-8" ]; then
	menuentry "[+] Chinese locale"{
		export debian_locale="";
		configfile ${prefix}/distro/debmenu.sh;
	}
else
	menuentry "[ ] Chinese locale"{
        if [ "${lang}" = "zh_CN" ]; then
            export debian_locale="locales=zh_CN.UTF-8";
        elif [ "${lang}" = "zh_TW" ]; then
            export debian_locale="locales=zh_TW.UTF-8";
		fi;
		configfile ${prefix}/distro/debmenu.sh
	}
fi;