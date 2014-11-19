#!/usr/bin/env bash

set -x

MEMORY=3072
CPUS=2

#boot2Docker stop
boot2docker --memory=$MEMORY init

# Share project folder to boot2docker image
# VBoxManage sharedfolder add boot2docker-vm -name project -hostpath /git/pillar-docker
# boot2Docker up
# boot2docker ssh 'sudo mkdir -p /usr/local/project'
# boot2docker ssh 'sudo mount -t vboxsf -o "defaults,uid=1000,gid=50,rw" project /usr/local/project'

boot2Docker up

# Export docker connection
export DOCKER_HOST=tcp://$(boot2docker ip 2>/dev/null):2375
export DOCKER_CERT_PATH=/Users/$USER/.boot2docker/certs/boot2docker-vm
export DOCKER_TLS_VERIFY=1

# SSH into VM
#boot2Docker ssh
