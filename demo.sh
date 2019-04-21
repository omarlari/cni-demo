#!/bin/bash
apt-get install pv
########################
# include the magic
########################
. demo-magic.sh

# hide the evidence
clear

# setup file system
pe "mkdir ~/cni"
pe "cd ~/cni"

# Obtain binaries
pe "curl -O -L https://github.com/containernetworking/cni/releases/download/v0.6.0/cni-amd64-v0.6.0.tgz"
pe "https://github.com/containernetworking/plugins/releases/download/v0.7.5/cni-plugins-amd64-v0.7.5.tgz"

# unpack cni-tools
pe "tar -xzvf cni-amd64-v0.6.0.tgz"
pe "tar -xzvf cni-plugins-amd64-v0.7.5.tgz"

# clean up tar files
pe "rm -rf *.tgz"





