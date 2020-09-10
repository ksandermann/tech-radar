#!/bin/bash
set -euo pipefail
IFS=$'\n\t'

RELEASE_TAG=0.1

docker kill tpc-radar || true
docker run -d -p 8080:3000 --name tpc-radar ksandermann/tpc-tech-radar:$RELEASE_TAG
