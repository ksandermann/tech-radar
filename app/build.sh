#!/bin/bash
set -euo pipefail
IFS=$'\n\t'

RELEASE_TAG=0.1

docker kill tpc-radar || true

docker login
docker build --tag ksandermann/tpc-tech-radar:$RELEASE_TAG .
docker push ksandermann/tpc-tech-radar:$RELEASE_TAG
