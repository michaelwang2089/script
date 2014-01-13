#!/bin/bash

# xxx branch: mobile,xlzj xxx

branch=$1
old_alter="alter.sql"
old_db="db.sql"
new_alter="alter_publish.sql"
new_db="db_publish.sql"
key="brench"

# xxxx branch: mobile
# xxxx xx xxxx xxxx
# xxx xxxx xxxx xxx

function fetch_branch() #$1: src_file $2: dst_file
{
  `echo '' > $2`

  #line=`awk '{print NR}' $1 |tail -1`
  #step=0 #0:con, 1:yes, 2:no

  cat awk '{ }' $1
  #for ((i=0; i < $line; ++i))
  #do
  ## print this line if no \n && > match line num
  #awk |grep 
  #result=`awk 'NR=='$i' {if(match($0, /.*branch:.*/)) print 1}' $1`
  #if [[ $result = '1' ]]; then
  #result=`awk 'NR=='$i' {if(match($0, /.*'$branch'.*/)) print 1}' $1`
  #if [[ $result = '1' ]]; then
  #step=1
  #else
  #step=2
  #fi
  #fi

  #if [ $step != 2 ]; then
  #`awk 'NR=='$i' {print $0}' $1 >> $2`
  #fi

  #if [ $step != 0 ]; then
  #result=`awk 'NR=='$i' {if(!match($0, /\s*/)) print 1}' $1`
  #if [[ $result = '1' ]]; then
  #step=0
  #fi
  #fi
  #done
}

fetch_branch $old_alter $new_alter
