# MacRecovery
[![Push exe To Releas](https://github.com/LoveGlaze/MacRecovery/actions/workflows/Auto%20py%20to%20exe.yml/badge.svg?branch=master)](https://github.com/LoveGlaze/MacRecovery/actions/workflows/Auto%20py%20to%20exe.yml)

MacRecovery-黑果在线安装工具
- 将U盘格式化为fat32格式(也可在硬盘建立一个800MB的Fat32格式分区)
- 下载Release里的压缩文件，解压运行选择需要的版本
- 将生成的com.apple.recovery.boot复制到U盘根目录，并将你的EFI目录拷贝到U盘根目录
- 重启，选择recovery即可进入恢复安装模式。
- 若看不到U盘的recovery恢复选项，可以通过修改EFI/OC/config.plist配置文件解决：
   - Misc --> Security --> ScanPolicy  修改为0 
- 在线安装必须保证你的OC配置里能正常驱动有线或无线网卡，如无网络，请还是用完整安装镜吧。
- 在线安装速度慢的话，可以将DNS修改为114.114.114.114
- [联想拯救者Y7000P-2019-EFI](https://github.com/gclm/Hackintosh-LEGION-Y7000P-I7-9750H)

