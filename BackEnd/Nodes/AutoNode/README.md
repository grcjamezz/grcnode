GridcoinAutoNode
===============

A script to run (ideally just after starting up a new server/VPS) to automatically setup `gridcoinresearchd` under `gridcoin` user, and have it start on boot (Debian).

It has been tested on Ubuntu 14.04 and Debian 8 (Jessie), and is only intended for use on these distros.

One Liner - DO NOT run without reading code first!
--------------------------------------------------
Ubuntu

    wget https://raw.githubusercontent.com/grctest/grcnode/master/BackEnd/Nodes/AutoNode/GridcoinAutoNode.sh ; sudo bash GridcoinAutoNode.sh
Debian  

    wget https://raw.githubusercontent.com/NeuralMiner/grcnode/master/BackEnd/Nodes/AutoNode/GridcoinAutoNodeDebian.sh ; sudo bash GridcoinAutoNodeDebian.sh

Notes
-----

This script installs:
- NTP/chrony
- unzip
- apt-utils
- software-properties-common
- git
- make
- gcc
- sudo
- gridcoinresearchd (from ppa:gridcoin/gridcoin-daily, not manually compiled from source)
- libminiupnpc8 (Debian)

This script:
- Creates a 'gridcoin' user to run gridcoinresearchd under (better than running client as root)
- Downloads official bootstrap instead of syncing from 0 (edit script if you don't want it to do this)
- Disables IPv6 (edit script if you require IPv6)
- Adds Google DNS
- Deletes sources.list, and ensures hosts are reachable for updates
- Configures NTP/chrony
- Autostart on boot (Debian)
- Attempts to clean up after itself by removing packages after install (bootstrap, git, gcc, unzip)

Ansible Playbook
----------------

Alternatively you may use the Ansible Playbook ```gridcoinnode-ansible.yml```

The playbook works with Ansible 2.2+ and been tested on Ubuntu 16.04 only. It should be possible to adjust it pretty easily to other distros (make sure to open PR with the work you did ;) ).

There are no requirements as it installs all Ansible/Gridcoin requirements by itself.
