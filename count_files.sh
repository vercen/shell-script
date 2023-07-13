#!/bin/bash

# 检查命令行参数是否为空
if [ -z "$1" ]; then
  echo "Usage: $0 directory"
  exit 1
fi

# 遍历指定目录下的所有文件和子文件夹
for file in "$1"/*; do
  if [ -f "$file" ]; then
    # 如果是文件，检查文件类型并统计数量和路径
    if [[ $file == *.log ]]; then
      echo "Log file: $file"
      ((log_count++))
    elif [[ $file == *.txt ]]; then
      echo "Text file: $file"
      ((txt_count++))
    fi
  elif [ -d "$file" ]; then
    # 如果是文件夹，递归调用脚本自身
    "$0" "$file"
  fi
done

# 输出统计结果
echo "Number of log files: $log_count"
echo "Number of text files: $txt_count"