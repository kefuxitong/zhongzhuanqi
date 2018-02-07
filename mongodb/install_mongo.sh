#!/bin/sh
Path=`pwd`
#echo $Path.tar
Bin="mongodb-linux-x86_64-3.0.6"
wget 'https://fastdl.mongodb.org/linux/mongodb-linux-x86_64-3.0.6.tgz'
tar xvf $Bin.tgz
mkdir db
mkdir log
cd ..
cd $Bin/bin
cp mongod /usr/bin
cp mongo /usr/bin
cd ../..
#生成一个mongo的启动shell文件
touch mongo_start.sh
chmod +x mongo_start.sh
echo "#!/bin/sh" >> mongo_start.sh
echo "mongod -bind_ip 127.0.0.1 -dbpath $Path/db -logpath $Path/log/log.info -fork " >> mongo_start.sh
echo "mongodb安装完成，数据存储在db/data 日志文件在db/log"
echo "你可以利用shell脚本启动mongodb，像这样: ./mongo_start.sh"
echo "启动后，你可以输入mongo，测试数据库是否安装/启动成功"
