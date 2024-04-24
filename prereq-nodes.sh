#!/bin/bash
# check if the sript is runing with root privilages
if [[ $EUID -ne 0 ]]; then
   echo " This script must be run as root"
   exit 1
fi
# create SSH key for root user
ssh-keygen -t ed25519 -f /root/.ssh/ansible -N ""
echo "SSH key created and saved to /root/.ssh/ansible"
inventory_file="hosts"
#check if the hosts file exists at the path provided
if [! -f "$inventory_file"]; then
   echo "Ansible inventory file not found:$inventory_file"
   exit 1
fi
#read the hostnames from the inventory file
hosts=
