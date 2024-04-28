#!/bin/bash

# ------------------------------
# Shell 工具集
# ------------------------------

echo "############ Shell 工具集 ############"
echo "请选择工具参数："
echo "go：部署 go 环境"

read -p "请选择工具参数：（可输入多个，用空格隔开）：" input_str
IFS=' ' read -ra input_array <<< "$input_str"
for str in "${input_array[@]}"
do
    case "$str" in
        "go")
            curl -sSL https://gitee.com/itstrongs/shell-tools/raw/master/go/deploy.sh | bash
            ;;
        "method2")
            echo "执行方法2"
            # 在这里写入方法2的具体代码
            ;;
        "method3")
            echo "执行方法3"
            # 在这里写入方法3的具体代码
            ;;
        *)
            echo "无法识别的方法：$str"
            ;;
    esac
done