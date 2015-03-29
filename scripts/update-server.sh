#!/bin/bash

srcdir=$(dirname $(readlink -f $BASH_SOURCE))
source $srcdir/common.sh

ping nbica-servers
play nbica-server-init


