# MacRecovery
MacRecovery-黑果在线安装工具
- 将U盘格式化为fat32格式
- 下载Release里的压缩文件，解压运行选择需要的版本
- 将生成的com.apple.recovery.boot到U盘，并将你的EFI目录拷贝到U盘根目录
- 然后修改你的EFI-OC-config.plist文件中的：
   - Misc-Boot-HideAuxiliary取消勾选
   - Misc-Boot-ShowPicker   勾选
   - Misc-Boot-Timeout     设置为5
- 重启设置BIOS，改为UEFI模式从U盘启动，选择recovery即可进入恢复安装模式。
- 若看不到U盘的recovery恢复选项，可以通过修改EFI/OC/config.plist配置文件解决：
   - Misc --> Security --> ScanPolicy  修改为0 
- 在线安装必须保证你的OC配置里能正常驱动有线或无线网卡，如无网络，请还是用完整安装镜吧。
- 在线安装速度慢的话，可以将DNS修改为114.114.114.114

