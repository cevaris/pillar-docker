pillar-docker
=============

Dockerized puppet solution for pillar


# Getting Started


## Requirements

boot2docker
- [fig](www.fig.sh)
- [boot2docker](http://boot2docker.io/)

## Setup

Bootup your boot2docker instance via `boot.sh`.

    $ git clone git@github.com:cevaris/pillar-docker.git
    $ cd pillar-docker
    $ ./boot.sh

Now you build and run the Docker containers via fig.

    $ fig build && fig up
