#!/bin/bash
sudo yum install epel-release -y
sudo yum install ansible git -y

# here it will ask you for the Git user name and password
git clone https://github.com/mcpalek/ansible-playbook-kubernetes-cluster.git

cd ansible-playbook-kubernetes-cluster

# when you are asked for the path for the file type next:
#/home/your_userName/.ssh/ansible 

# if you do not chqnge the name you will have to change the command in prereq-nodes to get the name you chose !!!

#https://medium.com/@sahil-awasthi/ed25519-or-rsa-which-one-is-better-18416fb51d0b#:~:text=Conclusion%3A,to%20its%20larger%20key%20size.
ssh-keygen -t ed25519 -C "ansible"
