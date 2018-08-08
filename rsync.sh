#!/usr/bin/env bash

pod_name=eap64-ear-1-ghgds

oc rsync runtime ${pod_name}:/opt
