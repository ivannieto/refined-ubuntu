#!/usr/bin/env bash

# Usage Example:
# ./install_ansible.sh 'v1.1' path/to/local/ansible/hosts/file
# Look up https://github.com/ansible/ansible for version tags to use

versionTag=$1
ansibleHosts=$2

# Install Git
# The most stable way of getting the latest version of ansible to get it directly from the git repo
echo "[Install Ansible] Install Git"
sudo apt-get install -y git-core

# Install Ansible Dependencies
echo '[Install Ansible] Install dependencies'
sudo apt-get install -y python-setuptools python-apt-common python3-apt
sudo easy_install jinja2 
sudo easy_install pyyaml
sudo easy_install paramiko

# Install Ansible
pip install ansible