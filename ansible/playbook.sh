#!/bin/sh
ansible-playbook -i inventory prod.yml --diff
