#!/usr/bin/env bash

set -x

FQDN=$(hostname -f)
puppet apply "/etc/puppet/manifests/$FQDN.pp" --verbose --detailed-exitcodes
