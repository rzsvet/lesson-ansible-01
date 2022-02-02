#!/bin/bash
echo "Start test playbook with Ansible-Lint"
ansible-lint main.yml
FILE=./playbook-settings-password
if [ -f "$FILE" ]; then
    ansible-playbook main.yml --vault-password-file playbook-settings-password
else 
    ansible-playbook main.yml --ask-vault-pass
fi