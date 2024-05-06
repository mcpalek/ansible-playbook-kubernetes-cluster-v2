# ansible-playbook-kubernetes-cluste
Ansible playbook for kubernetes cluster which works on Rocky/Ubuntu/CentOS/RedHat 
First create an ssh key  ssh-keygen -t ed25519 -C "ansible" /home/aca/.ssh/ansible

Then copy it to all servers
ssh-copy-id -i ~/.ssh/ansible.pub aca@192.168.122.249 
ssh-copy-id -i ~/.ssh/ansible.pub aca@192.168.122.76

 test to see if we have a connection with all servers
 ansible all -m ping --key-file ~/.ssh/ansible --ask-become-pass
 ansible-playbook local.yml --key-file ~/.ssh/ansible --ask-become-pass 
 here it is asking for the user root password


TASK [Rocky : Install yum utils] ***************************************************************************************************************
[WARNING]: The loop variable 'item' is already in use. You should set the `loop_var` value in the `loop_control` option for the task to
something else to avoid variable collisions and unexpected behavior.
[DEPRECATION WARNING]: Invoking "yum" only once while using a loop via squash_actions is deprecated. Instead of using a loop to supply multiple
 items and specifying `name: "{{ item }}"`, please use `name: ['yum-utils', 'device-mapper-persistent-data', 'lvm2']` and remove the loop. This
 feature will be removed from ansible-base in version 2.11. Deprecation warnings can be disabled by setting deprecation_warnings=False in 
ansible.cfg.
