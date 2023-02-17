#!/bin/bash

sleep 10

sudo yum update && sudo yum install git -y
sudo sudo amazon-linux-extras install nginx1 ansible2 -y
ansible-pull -U https://github.com/nylo-andry/ansible-demo-playbook.git

