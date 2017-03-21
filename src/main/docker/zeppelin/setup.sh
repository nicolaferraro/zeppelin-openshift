#!/bin/bash

if [ ! -f "zeppelin-${ZEPPELIN_VERSION}-bin-all.tgz" ]; then
    curl -O http://archive.apache.org/dist/zeppelin/zeppelin-${ZEPPELIN_VERSION}/zeppelin-${ZEPPELIN_VERSION}-bin-all.tgz
fi

tar xzf zeppelin-${ZEPPELIN_VERSION}-bin-all.tgz
rm zeppelin-${ZEPPELIN_VERSION}-bin-all.tgz
mv zeppelin-${ZEPPELIN_VERSION}-bin-all /usr/share/
ln -s /usr/share/zeppelin-${ZEPPELIN_VERSION}-bin-all /usr/share/zeppelin

chmod a+rwx /usr/share/zeppelin/notebook
chmod -R a+rw /usr/share/zeppelin/notebook

cp run.sh /usr/share/zeppelin/bin
