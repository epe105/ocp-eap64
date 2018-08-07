#!/usr/bin/env bash

oc new-app \
--name=eap64-war \
-p SOURCE_REPOSITORY_URL=https://github.com/mechevarria/ocp-eap64.git \
-p SOURCE_REPOSITORY_REF=master \
-p CONTEXT_DIR=/ \
eap64-basic-s2i