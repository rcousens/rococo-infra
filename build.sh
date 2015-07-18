#!/usr/bin/env bash
DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

rm -fr $DIR/.ansible
git clone https://github.com/rococo-io/rococo-ansible $DIR/.ansible

cd $DIR/docker/packer
packer build packer.json

cd $DIR/registry/packer
packer build packer.json

