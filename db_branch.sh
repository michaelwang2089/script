#!/bin/bash

# xxx branch: mobile,xlzj xxx

branch=$1
old_alter="alter.sql"
old_db="db.sql"
new_alter="alter_branch.sql"
new_db="db_branch.sql"
key="branch"

# xxxx branch: brn_mobile
# xxxx xx xxxx xxxx
# xxx xxxx xxxx xxx

function fetch_branch() #$1: src_file $2: dst_file
{
  awk 'BEGIN {RS="\n[ ,\t,\n]*\n"; ORS="\n\n"} {\
    if (match($0, /.*'$key':.*/))\
      {\
        if (match($0, /.*'$branch'.*/))\
          print $0;\
        }\
      else\
        print $0;\
      }' $1 > $2
}
fetch_branch $old_alter $new_alter
fetch_branch $old_db $new_db
