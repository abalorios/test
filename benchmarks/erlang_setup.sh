#!/bin/bash

KERL_VERSION="2.6.0"

sudo apt update
sudo DEBIAN_FRONTEND=noninteractive apt-get install -y automake autoconf libreadline-dev gcc g++ libncurses-dev libssl-dev libyaml-dev libxslt1-dev libffi-dev libtool unixodbc-dev libwxgtk3.0-gtk3-dev libgl1-mesa-dev libglu1-mesa-dev libssh-dev xsltproc fop libxml2-utils openjdk-17-jre openjdk-17-jdk

mkdir -p ~/.kerl/installs
sudo wget https://raw.githubusercontent.com/kerl/kerl/${KERL_VERSION}/kerl -O /usr/local/bin/kerl
sudo chmod 755 /usr/local/bin/kerl
ln -s /usr/local/bin/kerl ~/.kerl/kerl
