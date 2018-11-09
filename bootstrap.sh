#!/bin/sh
apt-get update
apt-get install software-properties-common
apt-add-repository --yes --update ppa:ansible/ansible
apt-get install ansible
ansible-playbook playbook.yml