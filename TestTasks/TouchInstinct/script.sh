#!/bin/bash
tmp="$(curl -s $1 | jq '.[0].title, .[1].title')"
res=$(sed 's/\"//g' <<<"$tmp")
array=(${res//:/ })
IFS=$'\n' sorted=($(sort <<<"${array[*]}"))
printf "%s\n" "${sorted[@]}"
