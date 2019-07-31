#!/bin/bash

VENVDIR=venv
virtualenv $VENVDIR
source $VENVDIR/bin/activate

pip install -r requirements.txt

vagrant up --provision

[[ $? == 0 ]] && ansible-playbook -i inventory/vagrant_ansible_inventory services.yml -v