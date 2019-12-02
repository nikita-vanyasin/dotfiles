#!/bin/sh

ANSIBLE_ENABLE_TASK_DEBUGGER=True ansible-playbook -vv --ask-become-pass main.yml
