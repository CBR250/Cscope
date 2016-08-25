#!/bin/bash
CURDIR=$PWD
PACKAGE=$CURDIR/PACKAGE
TARGET=$CURDIR/TARGET
OBJ=$CURDIR/OBJ

if [ ! -d "$PACKAGE" ]; then
	mkdir $PACKAGE
fi

if [ ! -d "$TARGET" ]; then
	mkdir $TARGET
fi

if [ ! -d "$OBJ" ]; then
	mkdir $OBJ
fi

echo "************ ctags-5.8.tar.gz  ***********************"
if [ ! -d $TARGET/ctags-5.8 ]; then
    cd $PACKAGE
    tar xvf "ctags-5.8.tar.gz" -C $TARGET

    cd $TARGET/ctags-5.8/

    ./configure \
       --prefix=$OBJ/ \

    make
    make install
fi
