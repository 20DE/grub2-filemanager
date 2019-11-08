# GRUB2 File Manager 
 ![](https://img.shields.io/github/license/a1ive/grub2-filemanager.svg?style=flat) ![](https://img.shields.io/github/downloads/a1ive/grub2-filemanager/total.svg?style=flat) ![](https://img.shields.io/github/release/a1ive/grub2-filemanager.svg?style=flat) 

## 预览

![preview.png](preview.png)

## 功能 

| 类型                                       | i386-pc | i386-efi | x86_64-efi |
| :----------------------------------------- | :-----: | :------: | :--------: |
| ![](images/iso.png)WinPE ISO               |    ✔️    |    ❌     |     ✔️      |
| ![](images/linux.png)Linux ISO             |    ✔️    |    ✔️     |     ✔️      |
| ![](images/android.png)Android ISO         |    ✔️    |    ✔️     |     ✔️      |
| ![](images/bsd.png)BSD ISO                 |    ✔️    |    ❌     |     ❌      |
| ![](images/img.png)IMG 磁盘镜像            |    ✔️    |    ❌     |     ✔️      |
| ![](images/vhd.png)VHD 硬盘镜像            |    ✔️    |    ❌     |     ✔️      |
| ![](images/nt6.png)WinPE WIM               |    ✔️    |    ✔️     |     ✔️      |
| ![](images/nt5.png)NT5 WinPE               |    ✔️    |    ❌     |     ❌      |
| ![](images/kernel.png)Linux/Multiboot 内核 |    ✔️    |    ✔️     |     ✔️      |
| ![](images/efi.png)EFI 应用                |    ❌    |    ✔️     |     ✔️      |
| ![](images/lua.png)Lua 脚本                |    ✔️    |    ✔️     |     ✔️      |

## 下载

[Releases](https://github.com/a1ive/grub2-filemanager/releases) 

## 构建 
### Linux 
```shell
git clone --recursive https://github.com/a1ive/grub2-filemanager.git
cd grub2-filemanager
./build.sh
```

## 启动 
**不要使用 memdisk 加载 grubfm.iso !**  

### GRUB4DOS 
```
map --mem /grubfm.iso (0xff)
map --hook
chainloader (0xff)
```
### GRUB 2
```
if [ "${grub_platform}" = "pc" ]; then
  linux /loadfm  
  initrd /grubfm.iso  
else
  chainloader /grubfm.efi
fi
```
### rEFInd

```
loader /grubfm.efi
```
### Systemd-boot 
```
efi /grubfm.efi
```

## 支持的发行版列表 
- [链接](distro.md)

## 源码

*	[GRUB2 File Manager](https://github.com/a1ive/grub2-filemanager)  
*	[GRUB2](https://github.com/a1ive/grub) 

## 相似项目

*	[Multiboot USB](http://mbusb.aguslr.com/) 
*	[grub-iso-boot](https://github.com/Jimmy-Z/grub-iso-boot) 
*	[grub-iso-multiboot](https://github.com/mpolitzer/grub-iso-multiboot) 
*	[GLIM](https://github.com/thias/glim) 
*	[Easy2Boot](http://www.easy2boot.com/) 
*	[GRUB2 File Explorer](http://bbs.wuyou.net/forum.php?mod=viewthread&tid=320715) 
*	[RUN](http://bbs.wuyou.net/forum.php?mod=viewthread&tid=191301) 
*	[G4D AUTOMENU](http://bbs.wuyou.net/forum.php?mod=viewthread&tid=203607) 
