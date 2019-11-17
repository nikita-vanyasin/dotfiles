#!/bin/bash

sudo efibootmgr -n 0000 && sync && shutdown -r now
