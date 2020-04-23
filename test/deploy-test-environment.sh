#!/bin/bash

packer build build-test-environment.json

terraform apply
