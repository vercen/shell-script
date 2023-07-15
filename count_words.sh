#!/bin/bash

# 检查命令行参数是否为空
if [ -z "$1" ]; then
  echo "Usage: $0 file"
  exit 1
fi

# 统计行数和单词数
line_count=$(grep -c '' "$1")
word_count=$(wc -w < "$1")

# 输出统计结果
echo "Number of lines: $line_count"
echo "Number of words: $word_count"