#!/bin/bash

# ./docker/push-with-src-tag.sh ~/Repos/github.com/tomhjx/lab/frp/client/ tomhjx/lab.frpc

buildfile=$1
registry=$2
latesttag=${registry}:latest
docker build ${buildfile} -t ${registry}:latest
ver=$(docker inspect -f '{{.Parent}}{{.RootFS.Layers}}' ${registry}:latest|md5|cut -c 1-13)
vertag=${registry}:${ver}
docker push ${latesttag}
docker tag ${latesttag} ${vertag} 
docker push ${vertag}