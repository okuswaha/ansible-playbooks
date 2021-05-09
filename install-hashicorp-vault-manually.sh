#!/bin/bash

sudo su
mkdir -p /opt/vault
wget https://releases.hashicorp.com/vault/1.7.1/vault_1.7.1_linux_amd64.zip -P /opt/vault
yum install unzip -y
unzip /opt/vault/vault_1.7.1_linux_amd64.zip
rm /opt/vault/vault_1.7.1_linux_amd64.zip
cp /opt/vault/vault /usr/bin
mkdir -p /etc/vault
mkdir -p /opt/vault-data
mkdir -p /logs/vault
wget https://raw.githubusercontent.com/vipin-k/HashiCorp-Vault/master/config.json -P /etc/vault/
wget https://raw.githubusercontent.com/vipin-k/HashiCorp-Vault/master/vault.service && /etc/systemd/system
private_ip=$(hostname -i | awk '{print $NF }') sed -i -e 's/172.31.109.209/$private_ip/g' -e 's/8200/8020/g' /etc/vault/config.json
systemctl daemon-reload
systemctl start vault 
