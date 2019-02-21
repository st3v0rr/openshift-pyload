#!/bin/sh

if [ ! -f "/opt/pyload/pyload-config/pyload.conf" ]
then
    mkdir /opt/pyload/pyload-config/
    cp /opt/pyload/pyload-initial-config /opt/pyload/pyload-config/
fi

/opt/pyload/pyLoadCore.py --configdir=/opt/pyload/pyload-config/
