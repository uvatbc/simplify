#!/bin/bash

# Usage: rungem.sh <gem to run>

GEM_INSTALL_LOCATION=/var/lib/gems/2.1.0/gems/
FINALPATH="$PATH"

#Find every bin directory in the GEM_INSTALL_LOCATION and add it to $PATH
while read line ; do
    if [ "$line" == "$GEM_INSTALL_LOCATION" ] ; then
        continue
    fi

    if [ -d "$line/bin" ] ; then
        FINALPATH="$line/bin:$FINALPATH"
    fi
# This is required to allow the updated value of FINALPATH to be used outside this loop.
# See: http://mywiki.wooledge.org/BashFAQ/024
done < <(find $GEM_INSTALL_LOCATION  -maxdepth 1)

#echo PATH=$FINALPATH $*
PATH=$FINALPATH $*
