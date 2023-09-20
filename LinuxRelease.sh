#!/bin/sh
appname=`basename $0 | sed s,\.sh$,,`
dirname=`dirname $0`
tmp="${dirname#?}"
if [ "${dirname%$tmp}" != "/"  ]; then
    dirname=$PWD/$dirname
fi
libpath=$dirname/'libs/'
LD_LIBRARY_PATH=$libpath
export LD_LIBRARY_PATH
$dirname/$appname "$@"
