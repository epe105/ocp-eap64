#!/bin/bash

oc new-build https://github.com/mechevarria/ocp-eap64.git --strategy=docker --name=docker-eap64