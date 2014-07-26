#!/bin/bash

set -u
set -e

here=`pwd`
echo "Linking files from $here"
ls ./.[!.]*

cd

ln -s $here/.[!.]* .

cd -
