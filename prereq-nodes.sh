#!/bin/bash
REMOTE_USER="aca"
REMOTE_HOST1="192.168.122.43"
REMOTE_HOST2="192.168.122.57"
REMOTE_FILE=/etc/sudoers

TEXT_TO_ADD="aca ALL=(ALL) NOPASSWD:ALL"
APPEND_COMMAND="echo '$TEXT_TO_ADD' >> $REMOTE_FILE"

 cat ~/.ssh/ansible.pub | ssh $REMOTE_USER@$REMOTE_HOST1 "mkdir -p ~/.ssh && cat >> ~/.ssh/authorized_keys"
 #ssh $REMOTE_USER@$REMOTE_HOST1 "$CHANGE_COMMAND"
 ssh $REMOTE_USER@$REMOTE_HOST1 "$APPEND_COMMAND"
 # Press ctrl +D to exit from server 1 and you will be prompted for password for the second server

  cat ~/.ssh/ansible.pub | ssh $REMOTE_USER@$REMOTE_HOST2 "mkdir -p ~/.ssh && cat >> ~/.ssh/authorized_keys"
  ssh $REMOTE_USER@$REMOTE_HOST2 "$APPEND_COMMAND"
  #press ctrl +D to return to the ansible controller