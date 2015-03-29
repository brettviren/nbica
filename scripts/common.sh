#!/bin/bash
topdir="$(dirname $srcdir)"

hostfile=${1:-${topdir}/hosts-home}

playdir="$topdir/playbooks"

if [ ! -d $topdir/venv ] ; then
    virtualenv $topdir/venv
    source $topdir/venv/bin/activate
    pip install ansible
else
    source $topdir/venv/bin/activate
fi

ping () {
    ansible -i "$hostfile" -m ping $1 || exit 1
}


play () {
    ansible-playbook -i "$hostfile" "$playdir/${1}.yml" || exit 1
}
