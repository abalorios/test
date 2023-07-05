#!/bin/bash

echo "j value: ${J}"

#set -euo pipefail

language_version="24.3.4.11"
echo "Erlang ${language_version} build started"

rm -rf ~/.kerl/installs/*

#export KERL_BUILD_BACKEND=git
export MAKEFLAGS="-j ${J}"
kerl update releases

kerl build ${language_version} ${language_version}
