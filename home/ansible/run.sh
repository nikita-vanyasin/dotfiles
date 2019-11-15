#!/bin/sh

ANSIBLE_ENABLE_TASK_DEBUGGER=True ansible-playbook -vvv --ask-become-pass main.yml
