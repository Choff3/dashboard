# Ansible Dashboard

This repo contains Ansible playbooks for provisioning a tmux based wall dashboard running Debian. 
The configs are specific to my setup, screen size, location etc.

## Running
`ansible-playbook -i hosts site.yml --ask-become-pass`