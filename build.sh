#!/bin/bash

JMETER_VERSION="5.1.1"

docker build  --build-arg JMETER_VERSION=${JMETER_VERSION} -t "jmdocker/jmeter:${JMETER_VERSION}" .
