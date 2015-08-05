#!/bin/bash

GEM_INSTALL_LOCATION=/var/lib/gems/2.1.0/gems/
FINALPATH="$PATH"

while read line ; do
    if [ "$line" == "$GEM_INSTALL_LOCATION" ] ; then
        continue
    fi

    if [ -d "$line/bin" ] ; then
        FINALPATH="$line/bin:$FINALPATH"
    fi
done < <(find $GEM_INSTALL_LOCATION  -maxdepth 1)

echo PATH=$FINALPATH $*
PATH=$FINALPATH $*
