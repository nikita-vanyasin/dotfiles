#!/bin/sh

ANSIBLE_ENABLE_TASK_DEBUGGER=True ansible-playbook -vvvv --ask-become-pass main.yml
