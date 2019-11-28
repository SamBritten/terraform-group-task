#!/bin/bash

# NGINX
ansible-playbook \
    -v -i "$(terraform output front_fqdn), $(terraform output manage_fqdn)," \
    -u sam \
    --ssh-common-args="-o StrictHostKeyChecking=no" playbooks/nginx.yml
