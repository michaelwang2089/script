#!/bin/bash

pro_root=$HOME/work/dev
user="michaelwang"
param="platform=-DFOR_MOBILE"

export LD_LIBRARY_PATH=$pro_root/libs

result=$(echo $1 | grep 'l')
if [[ $result != "" ]] 
then
  echo -e '\e[0;33;1mmake logic\e[0m'
  cd $pro_root/logic && make clean && make $param -j4
fi

result=$(echo $1 | grep 'w')
if [[ $result != "" ]] 
then
  echo -e '\e[0;33;1mmake world\e[0m'
  cd $pro_root/world && make clean && make $param -j4
fi

result=$(echo $1 | grep 'd')
if [[ $result != "" ]] 
then
  echo -e '\e[0;33;1mmake db_proxy\e[0m'
  cd $pro_root/db_proxy && make clean && make $param -j4
fi

result=$(echo $1 | grep 'c')
if [[ $result != "" ]] 
then
  echo -e '\e[0;33;1mmake chat\e[0m'
  cd $pro_root/chat && make clean && make $param -j4
fi
