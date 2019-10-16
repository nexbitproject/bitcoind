#!/bin/bash

set -exuo pipefail

TAG=${1:-latest}

docker build -t nexbitio/bitcoind:${TAG} .
docker login
docker push nexbitio/bitcoind:${TAG}
