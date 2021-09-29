#!/bin/bash

sudo apt update -yy

sudo apt install software-properties-common -yy

sudo add-apt-repository --yes --update ppa:ansible/ansible -yy

sudo apt install ansible -yy
