#!/bin/bash

# src0='k8s.gcr.io'
# src1='kube-controller-manager:v1.18.3'
# tomhjx/k8s.gcr.io_kube-controller-manager:v1.18.3 => k8s.gcr.io/kube-controller-manager:v1.18.3

src0=$1
src1=$2
edge="tomhjx/${src0}_${src1}"
docker pull  ${edge}
docker tag ${edge} ${src0}/${src1}