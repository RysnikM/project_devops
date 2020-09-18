#!/bin/bash

echo 'START ANSIBLE DEPLOY'

ansible-playbook -i inv.yaml server_deploy.yaml