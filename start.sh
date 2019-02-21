#!/bin/sh

if [ ! -f "/opt/pyload/pyload-config/pyload.conf" ]
then
    cp -afrv /opt/pyload/pyload-initial-config/* /opt/pyload/pyload-config/
fi

if [ -f "/opt/pyload/pyload-config/pyload.pid" ]
then
    rm /opt/pyload/pyload-config/pyload.pid
fi

/opt/pyload/pyLoadCore.py --configdir=/opt/pyload/pyload-config/
