#!/bin/bash

dirNums=(1 2)

for i in ${dirNums[@]}; do
  if [ ! -d "/data${i}" ]; then
    mkdir /data${i}
  fi
  if [ ! -d "/data${i}/xcache" ]; then
    mkdir /data${i}/xcache && chown xrootd:xrootd /data${i}/xcache
  fi
done