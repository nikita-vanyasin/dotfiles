#!/usr/bin/zsh

p=$(watson status -p)
t=$(watson status -e)
if [[ $p == "No project started." ]]; then
    echo $p
    exit 0
fi

echo "$p: $t"
echo "#44DD44"