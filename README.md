# Ansible Dashboard

This repo contains Ansible playbooks for provisioning a tmux based wall dashboard running Debian. 
The configs are specific to my setup, screen size, location etc.

## Running
1. Install Debian
2. Copy SSH key of primary user to host
3. `git clone --recurse-submodules git@github.com:Choff3/dashboard.git`
4. Populate `group_vars/all`
5. `ansible-playbook -i hosts site.yml --ask-become-pass`