#!/usr/bin/bash
apt update
apt upgrade -y
apt install ansible -y
ansible-galaxy collection install -r requirements.yml -p ./collections/
ansible-galaxy install -r requirements.yml --roles-path ./roles
