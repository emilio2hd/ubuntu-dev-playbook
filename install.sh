#!/bin/bash

set -e

if ! command -v ansible >/dev/null; then
    sudo apt-get update

    sudo apt-get --yes --force-yes install software-properties-common
    sudo add-apt-repository ppa:ansible/ansible
    sudo apt-get update
    sudo apt-get --yes --force-yes install ansible
fi

if [ ! -f "/etc/ansible/hosts" ]; then

cat > /tmp/hosts << "EOF"
[all]
127.0.0.1

EOF

sudo mv -f /tmp/hosts /etc/ansible/hosts
fi

sudo ansible-playbook playbook/site.yml --connection=local -s