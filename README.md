# Ansible

### install

```
git clone https://github.com/andromeda9096/ansible.git && cd ./ansible && chmod +x ./install_ansible.sh && ./install_ansible.sh -y 
```

### First default Config

- location : /etc/ansible
- ansible.cfg : delete #  "inventory      = /etc/ansible/hosts" and "host_key_checking = False"
- hosts : input server here
```
[k8s]
192.168.3.191
192.168.3.192
192.168.3.193
192.168.3.194
192.168.3.195
192.168.3.196
 [k8s:vars]
 ansible_private_key_file=/root/.ssh/id_rsa
 ansible_user=root
 ansible_password=mypassword
 ansible_become=yes
 ansible_become_method=sudo
 ansible_python_interpreter='/usr/bin/python3'
```

### Run test

```
ansible k8s -m ping
```

```
ansible-playbook check_os_version.yaml
```

