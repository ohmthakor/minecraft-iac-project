#!/bin/bash
set -e

ansible-playbook -i ansible/inventory.ini ansible/playbook.yml
