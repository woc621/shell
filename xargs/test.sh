#!/bin/bash
#将标准输入转换成命令行参数
echo  arg1 arg2 arg3 | xargs echo
echo ----------------------------
#控制每行参数数量
echo  arg1 arg2 arg3 | xargs -n 2 echo
echo ----------------------------
#指定定界符
echo  arg1:arg2:arg3 | xargs -d ':' echo
echo ----------------------------
#参数替换, -I num表示替代字符串
cat args.txt | xargs -I num echo num
