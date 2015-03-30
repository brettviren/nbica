#!/bin/bash

srcdir=$(dirname $(readlink -f $BASH_SOURCE))
source $srcdir/common.sh

play student-workstations
