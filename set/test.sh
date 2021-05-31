#!/bin/bash
set -euxo pipefail
host=$1
user=$2
password=$3
args=(
    -h"$host"
    -u"$user"
    -p"$password"
)
echo ${args[@]}
