#!/usr/bin/env bash
set -e;

cd "$(dirname "$(realpath "$0")")";

test -d extern || mkdir extern;
test -d extern/tes3mp || git clone --branch 0.8.1 https://github.com/TES3MP/openmw-tes3mp.git extern/tes3mp
test -d extern/CrabNet || git clone https://github.com/TES3MP/CrabNet extern/CrabNet