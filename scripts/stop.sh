#!/bin/sh
    
[[ -e /etc/systemd/system/helloworld.service ]] \
  && systemctl status helloworld | \
    grep -q '^helloworld start/running, process' \
  && [[ $? -eq 0 ]] \
  && systemctl stop helloworld || echo "Application not started"  
