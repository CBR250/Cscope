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

echo "************ cscope-15.8b  ***********************"
if [ ! -d $TARGET/cscope-15.8b ]; then
    cd $PACKAGE
    tar xvf "cscope-15.8b.tar.gz" -C $TARGET

    cd $TARGET/cscope-15.8b/

    ./configure \
       --prefix=$OBJ/ \

    make
    make install
fi
