#!/usr/bin/env bash

cd molecule/cluster-linux-delegated

docker stop storage1
docker stop clusternode1
docker stop clusternode2
docker stop client

docker rm storage1
docker rm clusternode1
docker rm clusternode2
docker rm client

docker network rm cluster-linux-delegated_cluster-network

docker rmi cluster-linux-delegated_storage1
docker rmi cluster-linux-delegated_clusternode1
docker rmi cluster-linux-delegated_clusternode2
docker rmi cluster-linux-delegated_client

cd ../../
