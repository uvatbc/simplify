#!/bin/bash
# License: Creative Commons 1.0 Universal. See "CC1.0Universal" under the licenses directory.

# This script expects to find the extracted JDK in the directory $HOME/bin/java.
# It will look at the names of the top level directories that match the pattern
# that starts with "jdk" and ends with "x64".
# The script then uses this directory as the base for the path to the libnpjp2.so
# It will create links in the browser plugin directories for chrome and firefox

pushd $HOME/bin/java
JRE=`find . | grep '^./jdk.*x64$' | sed -s 's/\.\///'`
JREPATH=`pwd`/$JRE
popd

sudo rm /opt/google/chrome/plugins/libnpjp2.so
sudo rm /usr/lib/mozilla/plugins/libnpjp2.so

echo "sudo ln -s $JREPATH/jre/lib/amd64/libnpjp2.so /opt/google/chrome/plugins/libnpjp2.so"
sudo ln -s $JREPATH/jre/lib/amd64/libnpjp2.so /opt/google/chrome/plugins/libnpjp2.so

echo "sudo ln -s $JREPATH/jre/lib/amd64/libnpjp2.so /usr/lib/mozilla/plugins/libnpjp2.so"
sudo ln -s $JREPATH/jre/lib/amd64/libnpjp2.so /usr/lib/mozilla/plugins/libnpjp2.so
