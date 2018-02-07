#!/bin/sh
Bin="ffmpeg-release-64bit-static"
Ffmpeg="ffmpeg-3.4.1-64bit-static"
#"ffmpeg-release-64bit-static.tar"
wget 'https://johnvansickle.com/ffmpeg/releases/ffmpeg-release-64bit-static.tar.xz'
xz -d $Bin.tar.xz
if [ ! $? -eq 0 ];then
    echo "xz -d 解压文件失败，是否安装xz命令"
    exit -1
fi
tar xvf $Bin.tar
if [ ! $? -eq 0 ];then
    echo "tar xvf解压tar失败，是否存在$Bin.tar文件,是否安装tar命令"
    exit -1
fi
cp ./$Ffmpeg/ffmpeg /usr/bin

echo "ffmpeg程序安装完毕，你可以尝试输入ffmpeg，测试是否已经安装成功"
echo "若失败，查看目录下是否存在ffmpeg目录，将该目录下ffmpeg二进制文件复制到/usr/bin下"
