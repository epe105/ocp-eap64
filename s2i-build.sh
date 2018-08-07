#!/usr/bin/env bash

# https://github.com/openshift/source-to-image/blob/master/docs/cli.md#s2i-build

source_location=.
builder_image=jboss-eap-6/eap64-openshift
tag=s2i-build/eap64-war
flags=-c

s2i build ${source_location} ${builder_image} ${tag} ${flags}
