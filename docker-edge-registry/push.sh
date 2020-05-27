#!/bin/bash
# ./push k8s.gcr.io/kube-controller-manager:v1.18.3 
# k8s.gcr.io/kube-controller-manager:v1.18.3 => tomhjx/k8s.gcr.io_kube-controller-manager:v1.18.3

src=$1
edge0=${src////_}
edge="tomhjx/${edge0}"
docker pull ${src}
docker tag  ${src} ${edge}
docker push ${edge}