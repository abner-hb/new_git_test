#! usr/bin/bash
code_lines=$(grep -v '^\s*$' $1 | grep -v '^\s*#' | wc -l)
echo $code_lines
#useless comment 1
#useless comment 2
