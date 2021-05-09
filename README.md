# ansible-playbooks

To set up ansible workspace

create a new VM

set hostname

hostnamectl set-hostname ansible

install ansible

sudo yum install anisible

verify ansible

ansible --version

Create new node 

hostnamectl set-hostname webserver1

on ansible workspace server

update the /etc/ansible/hosts

[webserver1]

#ipaddress

configure ansible to be able to communicate to webserver1 using ssh key

ssh-keygen

ssh-copy-id cloud_user@<ipaddress-of-weberserver1>
  
validate 

ssh cloud_user@<ipaddress-of-weberserver1>
