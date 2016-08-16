#!/bin/bash

script_dir=$(dirname $0)

source ${script_dir}/aliases.sh
source ${script_dir}/envs.sh
source ${script_dir}/functions.sh
source ${script_dir}/paths.sh

source ${script_dir}/haskell.sh
source ${script_dir}/node.sh
source ${script_dir}/python.sh
source ${script_dir}/ruby.sh
source ${script_dir}/golang.sh

source ${script_dir}/gpg.sh