#! /bin/sh
# 本脚本用于一键开始复习
#echo "hello word";
cd ;
if  [ ! -e "复习/$1" ]
then 
    mkdir "复习/$1"
    cd "复习/$1"
    mkdir "source"
    touch "README.md"
    echo "# $1期末复习" >> README.md
    sleep 1
    typora "README.md"&
    exit
else
    echo ".....切换到$1复习文件夹"
    cd  "复习/$1"
    pwd
    sleep 1
    typora "README.md"&
    exit
fi
