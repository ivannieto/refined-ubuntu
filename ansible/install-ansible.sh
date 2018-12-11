#!/bin/bash

if ! command -v ansible >/dev/null; then
        echo "Installing Ansible."
        sudo apt install ansible -y
fi
