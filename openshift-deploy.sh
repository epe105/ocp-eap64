#!/usr/bin/env bash

oc new-app \
-p APPLICATION_NAME=eap64-war \
-p SOURCE_REPOSITORY_URL=https://github.com/mechevarria/ocp-eap64.git \
-p SOURCE_REPOSITORY_REF=master \
-p CONTEXT_DIR=/ \
-p IMAGE_STREAM_NAMESPACE=openshift \
eap64-basic-s2i