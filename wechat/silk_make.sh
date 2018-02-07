#!/bin/sh
Path=`pwd`
ehco $Path
Silk='silk-v3-decoder-master'
if [ ! -d $Silk ];then
   echo -e "不存在$Silk文件夹!!"
   exit -1
fi
if [ ! -f $Silk/converter.sh ];then
   ehco "不存在$Silk/converter.sh脚本!!"
   exit -1
fi
chmod +x $Silk/converter.sh
if [ ! -d $Silk/silk ];then
   echo "不存在$Silk/silk文件夹!!"
   exit -1
fi
cd $Silk/silk
if [ ! -f $Silk/silk/Makefile];then
   ehco "不存在$Silk/silk/MakeFile文件!!"
   exit -1
fi
make
if [ ! $? -eq 0 ];then
   ehco "系统是否安装G++;请安装gcc-c++"
   exit -1
fi
make decoder
make encoder
cp encoder $Path
echo "编译成功"
