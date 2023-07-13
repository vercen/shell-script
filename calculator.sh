#!/bin/bash

# 从命令行获取输入参数
num1=$1
operator=$2
num2=$3

# 判断输入参数是否合法
if [[ ! $num1 =~ ^[0-9]+$ || ! $num2 =~ ^[0-9]+$ ]]; then
  echo "输入的参数必须是数字"
  exit 1
fi

# 根据运算符执行相应的计算，并输出结果
case $operator in
  +)
    result=$(($num1 + $num2))
    ;;
  -)
    result=$(($num1 - $num2))
    ;;
  \*)
    result=$(($num1 * $num2))
    ;;
  /)
    result=$(($num1 / $num2))
    ;;
  *)
    echo "不支持的运算符"
    exit 1
    ;;
esac

echo "$result"