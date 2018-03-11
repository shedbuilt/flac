#!/bin/bash
./configure --prefix=/usr \
            --disable-static \
            --disable-thorough-tests && \
make -j $SHED_NUMJOBS && \
make DESTDIR="$SHED_FAKEROOT" install
