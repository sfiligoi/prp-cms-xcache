#!/bin/bash

dirNums=($(seq 1 30 ))

for i in ${dirNums[@]}; do
  if [ ! -d "/data${i}" ]; then
    mkdir /data${i}
  fi
  if [ ! -d "/data${i}/xcache" ]; then
    mkdir -p /data${i}/xcache && chown xrootd:xrootd /data${i}/xcache
  fi
done
chown xrootd:xrootd /xcache-root
