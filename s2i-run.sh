#!/usr/bin/env bash

# https://github.com/openshift/source-to-image/blob/master/docs/cli.md#s2i-build

port=8080
tag=s2i-build/eap64-war

docker run \
-p ${port}:${port} \
${tag} \
