#!/bin/bash

srcdir=$(dirname $(readlink -f $BASH_SOURCE))
source $srcdir/common.sh

play nbica-target-init -K -k

echo "IMPORTANT: now move hosts out of [toconfigure] from $hostfile"

