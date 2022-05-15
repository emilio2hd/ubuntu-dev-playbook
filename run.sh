#!/usr/bin/env bash

# Install basic dependencies and make sure python3 is installed
which python3 > /dev/null 2>&1
if [[ $? != 0 ]] ; then
  sudo apt update && sudo apt -y upgrade && sudo apt -y autoremove
fi

which python3 > /dev/null 2>&1
if [[ $? != 0 ]] ; then
  echo "uh-oh! Something went wrong and python was not properly installed. Please check for errors and try again."
  exit 1
fi

which pip3 > /dev/null 2>&1
if [[ $? != 0 ]] ; then
  sudo apt install software-properties-common -y
  sudo apt install -y python3-pip
fi

which ansible > /dev/null 2>&1
if [[ $? != 0 ]] ; then
  sudo pip3 install ansible
fi

ansible-galaxy install -r requirements.yml

if [[ $# -gt 0 ]]; then
    ansible-playbook main.yml "$@"
else
    ansible-playbook main.yml
fi