FROM ubuntu:12.04

MAINTAINER Adam Cardenas "cevaris@gmail.com"


# Prepwork
ADD ./puppet/modules /etc/puppet/modules
ADD ./puppet/manifests /etc/puppet/manifests

RUN apt-get -y -q update \
    && apt-get -y -q install wget curl


# Install Puppet
RUN wget -N https://apt.puppetlabs.com/puppetlabs-release-precise.deb > puppetlabs-release-precise.deb \
    && dpkg -i puppetlabs-release-precise.deb

RUN apt-get -y -q update && apt-get -y -q install puppet
