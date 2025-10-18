#!/bin/bash

echo "==== SYSTEM INFO ===="
echo "User: $(whoami)"
echo "Hostname: $(hostname)"
echo "Kernel: $(uname -r)"
echo "Uptime: $(uptime -p)"
echo "Current Directory: $(pwd)"
echo "Disk Usage:"
df -h | grep '^/dev'
