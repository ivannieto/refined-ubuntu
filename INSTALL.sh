#!/bin/bash

./install-ansible.sh

ansible-playbook ansible/install.yml -e ansible_python_interpreter=/usr/bin/python2.7 --ask-sudo-pass