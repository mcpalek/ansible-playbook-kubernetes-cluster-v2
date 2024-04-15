# ansible-playbook-kubernetes-cluste
Ansible playbook for kubernetes cluster which works on Rocky/Ubuntu/CentOS 
First create an ssh key  ssh-keygen -t ed25519 -C "ansible" /home/aca/.ssh/ansible

Then copy it to all servers
ssh-copy-id -i ~/.ssh/ansible.pub aca@192.168.122.249 
ssh-copy-id -i ~/.ssh/ansible.pub aca@192.168.122.76

 test to see if we have a connection with all servers
 ansible all -m ping --key-file ~/.ssh/ansible --ask-become-pass
 ansible-playbook local.yml --key-file ~/.ssh/ansible --ask-become-pass 
 here it is asking for the user root password

