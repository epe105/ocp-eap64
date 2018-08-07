#!/bin/bash
project="$(oc projects | grep eap64)"

if [[ -z ${project} ]]; then
  oc new-project eap64 --display-name="EAP 6.4 WAR deploy" --description="Example project with EAP 6.4 deployed WAR using the dockerfile strategy"
else
  oc project eap64
fi

#oc new-build https://github.com/mechevarria/ocp-eap64.git \
#--docker-image="registry.access.redhat.com/jboss-eap-6/eap64-openshift:latest" \
#--strategy=docker \
#--name=docker-eap64

oc new-app https://github.com/mechevarria/ocp-eap64.git \
--strategy=docker \
--name=docker-eap64