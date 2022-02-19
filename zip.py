# -*- coding: utf-8 -*-
"""
Created on Sat Feb 19 19:51:59 2022

@author: LoveGlaze
"""
import zipfile
f = zipfile.ZipFile('MacRecovery.zip','w', zipfile.ZIP_DEFLATED)
f.write('dist/macrecovery.exe')
f.write('Mac恢复分区下载.bat')
f.write('README.md')
f.close()
