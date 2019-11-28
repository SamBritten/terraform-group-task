#!/bin/bash

# NGINX
ansible-playbook \
    -v -i "$(terraform output nginx_fqdn), \
    -u jenkins \
    --ssh-common-args="-o StrictHostKeyChecking=no" playbooks/nginx.yml

# JENKINS
ansible-playbook \
    -v -i "$(terraform output jenkins_fqdn), \
    -u jenkins \
    --ssh-common-args="-o StrictHostKeyChecking=no" playbooks/jenkins.yml
