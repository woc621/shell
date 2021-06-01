#!/bin/bash
#修改配置文件
#读取dist.env文件
declare -A dict
while read line
do
	if [[ "$line" =~ ^"#" ]] || [[ "$line" = "" ]];
	then
		continue
	else
		key=${line%%=*}
		value=${line#*=}
		#将value中包含#的字符进行转义，防止在sed替换时报错
		#dict[$key]=${value//#/\\#}
		dict[$key]=$value
	fi
done < ./dist.env
for key in  ${!dict[*]}
do
  value=${dict[$key]}
  echo $key $value
done

