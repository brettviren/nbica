#!/bin/bash

srcdir=$(dirname $(readlink -f $BASH_SOURCE))
source $srcdir/common.sh

# this key must match what's used in the nbica-target-init.yml playbook
ssh_key="$topdir/keys/ssh-key"
if [ ! -f "$ssh_key" ] ; then
    mkdir -p "$topdir/keys"
    echo "Making SSH key pair root@ and rootless@"
    ssh-keygen -t rsa -f "$ssh_key"
fi

play -K nbica-target-init

echo "IMPORTANT: now move hosts out of [toconfigure] from $hostfile"

