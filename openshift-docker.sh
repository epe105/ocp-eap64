#!/usr/bin/env bash

oc new-app https://github.com/mechevarria/ocp-eap64.git \
--strategy=docker \
--name=docker-eap64

oc expose svc/docker-eap64