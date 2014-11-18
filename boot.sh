#!/usr/bin/env bash -xe


boot2Docker stop
boot2docker init

# Share project folder to boot2docker image
VBoxManage sharedfolder add boot2docker-vm -name project -hostpath /git/pillar-docker
boot2Docker up
boot2docker ssh 'sudo mkdir -p /data'
boot2docker ssh 'sudo mount -t vboxsf -o "defaults,uid=33,gid=33,rw" project /data'

export DOCKER_HOST=tcp://$(boot2docker ip 2>/dev/null):2375

# SSH into VM
boot2Docker ssh
