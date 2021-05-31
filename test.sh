#!/bin/bash
host=$1
user=$2
password=$3
set -ueox pipefail
args=(
    -h"$host"
    -u"$user"
    -p"$password"
)
echo ${args[@]}
