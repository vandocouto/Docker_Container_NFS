#!/bin/bash

rpcbind
/etc/init.d/nfs-kernel-server start
exportfs -a
