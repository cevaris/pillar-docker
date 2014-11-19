#!/usr/bin/env bash

set -x

MEMORY=3072
CPUS=2

#boot2Docker stop
boot2docker --memory=$MEMORY init

# Share project folder to boot2docker image
VBoxManage sharedfolder add boot2docker-vm -name project -hostpath /git/pillar-docker
boot2Docker up
boot2docker ssh 'sudo mkdir -p /usr/local/project'
boot2docker ssh 'sudo mount -t vboxsf -o "defaults,uid=1000,gid=50,rw" project /usr/local/project'

# Install fig
boot2Docker ssh 'curl -L https://github.com/docker/fig/releases/download/1.0.1/fig-`uname -s`-`uname -m` > /tmp/fig'
boot2Docker ssh 'sudo chmod +x /tmp/fig'
boot2Docker ssh 'sudo mv /tmp/fig /usr/local/bin/fig'

export DOCKER_HOST=tcp://$(boot2docker ip 2>/dev/null):2375

# SSH into VM
boot2Docker ssh
