#!/usr/bin/env bash

cd molecule/cluster-linux-delegated

docker-compose build

docker-compose up -d

cd ../../