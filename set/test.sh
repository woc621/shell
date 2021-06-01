#!/bin/bash
# -e 执行脚本出现异常时退出，后续命令不再执行
# set -o pipefail。这个特别的选项表示在管道连接的命令中，只要有任何一个命令失败（返回值非0），则整个管道操作被视为失败
# -u 将未定义的变量视为错误
# -x 将每个命令在执行前先打印出来
set -euxo pipefail
host=$1
user=$2
password=$3
args=(
    -h"$host"
    -u"$user"
    -p"$password"
)
echo ${args[@]}
