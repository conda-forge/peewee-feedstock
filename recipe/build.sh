#!/bin/bash

HOME=`pwd`

echo "Downloading sqlite"
SQLITE_URL="https://www.sqlite.org/2018/"
SQLITE_FILE="sqlite-autoconf-3220000"
SQLITE_EXT=".tar.gz"
curl -L -O "${SQLITE_URL}/${SQLITE_FILE}${SQLITE_EXT}"

tar xvfz  ${SQLITE_FILE}${SQLITE_EXT}

cd ./${SQLITE_FILE}

./configure --prefix=$PREFIX

make
make install

cd $HOME
$PYTHON setup.py build
$PYTHON setup.py install
